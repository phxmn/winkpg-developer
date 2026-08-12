#!/usr/bin/env bash
# Generates one client package from the published OpenAPI contract.
#
# Every generator flag is read from sdk-packages.json, and nothing is written outside the output
# directory. That is what makes "a fork rebrands by editing one config file, touching no generated
# code" true rather than aspirational: this script has no package identity of its own to disagree
# with the config, and there is no post-generation edit step for a rebrand to have to repeat.
#
#   generate-clients.sh <language> <output-directory>
#
# `language` is a key under `packages` in sdk-packages.json (typescript, csharp, python).
#
# Deliberately not `--skip-validate-spec`. The input is the raw servable document, which validates
# clean; the canonical snapshot does not (it is prose-free by design, and `description` is required
# on a Response object), and suppressing the validator to feed it in would strip every doc comment
# out of the published packages while hiding real generation hazards. If this ever starts failing
# validation, the document is what changed.

set -euo pipefail

LANGUAGE="${1:?usage: generate-clients.sh <language> <output-directory>}"
OUTPUT="${2:?usage: generate-clients.sh <language> <output-directory>}"

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CONFIG="$ROOT/sdk-packages.json"

read_config() {
  python3 -c "import json,sys; print(json.load(open(sys.argv[1]))$1)" "$CONFIG"
}

GENERATOR_VERSION="$(read_config "['generatorVersion']")"
SPEC="$(read_config "['specPath']")"
CHANGELOG="$(read_config "['changelogPath']")"
GENERATOR="$(read_config "['packages']['$LANGUAGE']['generator']")"

if [[ ! -f "$SPEC" ]]; then
  echo "The published contract is missing at $SPEC. The WinkPG build writes it to this branch; nothing can be generated without it." >&2
  exit 1
fi

# Flag assembly lives in python rather than in shell because the values are arbitrary JSON strings
# and word splitting them would be a silent corruption: a package name with a space in it would
# become two flags rather than an error.
mapfile -t EXTRA_ARGS < <(python3 - "$CONFIG" "$LANGUAGE" <<'PY'
import json, sys

config = json.load(open(sys.argv[1]))
package = config["packages"][sys.argv[2]]
metadata = config.get("metadata", {})

properties = dict(package.get("additionalProperties", {}))

# The registry identity, per generator. Each of these is the generator's own flag for the name the
# package is published under, which is why a rebrand never has to touch generated source.
for key in ("npmName", "packageName", "projectName"):
    if key in package:
        properties.setdefault(key, package[key])

for key, value in metadata.items():
    properties.setdefault({"author": "infoName", "license": "licenseId"}.get(key, key), value)

if properties:
    print("--additional-properties=" + ",".join(f"{k}={v}" for k, v in sorted(properties.items())))

mappings = package.get("modelNameMappings")
if mappings:
    print("--model-name-mappings")
    print(",".join(f"{k}={v}" for k, v in sorted(mappings.items())))
PY
)

echo "Generating the $LANGUAGE client with OpenAPI Generator $GENERATOR_VERSION ($GENERATOR)."

rm -rf "$OUTPUT"
mkdir -p "$OUTPUT"

npx --yes "@openapitools/openapi-generator-cli@$GENERATOR_VERSION" generate \
  --input-spec "$SPEC" \
  --generator-name "$GENERATOR" \
  --output "$OUTPUT" \
  "${EXTRA_ARGS[@]}"

# The changelog the platform generated from the contract delta ships inside the package, so an
# integrator reading the release on the registry sees the same list the version was derived from.
if [[ -f "$CHANGELOG" ]]; then
  cp "$CHANGELOG" "$OUTPUT/CHANGELOG.md"
fi

echo "Generated $LANGUAGE client into $OUTPUT."
