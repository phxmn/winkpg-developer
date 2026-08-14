## 3.8.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field TransactionDto.idempotencyStatus: CreateIdempotencyStatus
- schema CreateIdempotencyStatus: type=string enum=[KeyAccepted,KeyIgnored,NotRequested,Replayed]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
