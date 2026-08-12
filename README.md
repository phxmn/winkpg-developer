# WinkPG developer resources

The public home of everything an integrator builds against: the published OpenAPI contract, the
generated client SDKs for TypeScript, C# and Python, and the samples catalog the WinkPG Developer
Portal reads.

Nothing in this repository is hand written client code. Every package is generated from the contract
by [OpenAPI Generator](https://openapi-generator.tech/), and every package identity is a value in
[`sdk-packages.json`](sdk-packages.json), so rebranding the SDKs is an edit to one file rather than a
patch over generated output.

## Layout

| Path | What it is |
|---|---|
| `spec/openapi.raw.json` | The published OpenAPI contract. Written by the WinkPG build, never by hand |
| `spec/release.json` | The version and semver bump the platform classified for this contract |
| `spec/CHANGELOG.md` | The integrator-facing changelog, shipped inside each package |
| `sdk-packages.json` | Package identity and generator flags. The one file a fork edits |
| `scripts/generate-clients.sh` | Generates one client from the contract |
| `.github/workflows/publish-sdks.yml` | Generate, build, smoke test, publish, record |
| `samples/manifest.json` | The catalog the Developer Portal fetches and renders |

## How a release happens

The platform repository owns the contract. This repository owns the packages.

```
WinkPG build (develop)                    phxmn/winkpg-developer
----------------------                    ----------------------
Build stage
  emits openapi.raw.json  ──┐
                            │
PublishApiSpec stage        │
  classifies the bump       │
  renders the changelog     ├─ commit on bot/api-spec ──▶  publish-sdks.yml
  commits spec/ ────────────┘   spec/openapi.raw.json        generate all three clients
                                spec/release.json            build, smoke test, publish
                                spec/CHANGELOG.md            update samples/manifest.json on main
```

An unchanged contract publishes nothing at all: the platform pushes no commit, so this workflow
never runs and no version is minted. A contract that changed without moving anything an integrator
can observe classifies as a `none` bump and publishes nothing either.

The bump is classified on the platform side, deliberately. The fact extractor that decides what
counts as a contract change is already the source of truth for the platform's own docs freshness
gate, and a second copy of that judgement here would drift. The first symptom of that drift would be
a package version claiming compatibility about a change the platform already called breaking.

## Branches

| Branch | Holds |
|---|---|
| `main` | Everything in the table above except `spec/`. The samples catalog lives here |
| `bot/api-spec` | The same tree, plus `spec/`. The platform pushes here on every contract change |

**`bot/api-spec` must carry the workflow, `scripts/` and `sdk-packages.json`, not just `spec/`.**
GitHub runs a `push`-triggered workflow from the definition on the ref that was pushed, and every
job in this one checks out that same ref. A `bot/api-spec` that holds only `spec/` has no workflow
file on it, so a push lands and nothing runs at all: no release, no failure, no signal anywhere.
Keep the branch in step with `main` when `main` changes.

Only the `manifest` job checks out `main`, because recording a release is a change to the catalog
rather than to the spec.

## Rebranding a fork

Edit [`sdk-packages.json`](sdk-packages.json). Nothing else. Every value in it is passed to the
generator CLI as a flag, so there is no generated file for a rebrand to patch and therefore nothing
to re-patch on the next contract change.

Two rules a fork should hold to:

- Use `WinkPg`, never `Phoenix` or `PhoeniXGate`. That branding is retired, and a published package
  id is the most permanent place to get it wrong.
- Change the registry scope. A fork must not publish under an npm scope it does not own, which is
  why the scope is a value in the config rather than something derived from a name.

Then point your instance's `DeveloperPortal.SamplesRepositoryUrl` setting at your fork's raw content
base URL, branch included:

```
https://raw.githubusercontent.com/<owner>/<repo>/main
```

## Credentials

Nothing in this repository stores one.

| Registry | How it publishes |
|---|---|
| npm | OIDC trusted publishing. No stored secret |
| PyPI | OIDC trusted publishing. No stored secret |
| NuGet | No OIDC equivalent, so a scoped push key in `secrets.NUGET_API_KEY` |

The pre-publish smoke call reads `WINKPG_SANDBOX_BASE_URL` and `WINKPG_SANDBOX_API_KEY` from
repository secrets. With neither configured the smoke step still proves the install and the
generated surface, and reports the live call as skipped rather than passing it silently.

The smoke steps print HTTP status codes and nothing else. A response body is payload data and must
never reach a CI log or an artifact.

## License

MIT. See [LICENSE](LICENSE).
