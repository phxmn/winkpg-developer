## 8.5.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- parameter GET /api/transactions query:MerchantId: optional type=string format=uuid
- parameter GET /api/transactions query:MerchantIds: optional type=array items(type=string format=uuid)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
