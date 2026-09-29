## 31.10.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Merchants:TrialExtensionMerchantHasNoTrial: 400
- error code Merchants:TrialExtensionSuspensionNotFromTrial: 409
- field EmailLogDto.kind: type=string nullable=true
- parameter GET /api/twilio/email-log query:Kinds: optional type=array items(type=string)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
