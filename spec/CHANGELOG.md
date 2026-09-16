## 22.15.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Transactions:StandaloneTokenCreateIdempotencyInProgress: 409
- error code Transactions:StandaloneTokenCreateIdempotencyKeyReused: 409
- error code Transactions:StandaloneTokenCreateIdempotencyStoreUnavailable: 429
- error code Transactions:StandaloneTokenCreateIdempotencyTokenGone: 409
- field CreateStandaloneTokenRequestDto.idempotencyKey: type=string nullable=true
- field CreateStandaloneTokenResponseDto.idempotencyStatus: allOf(StandaloneTokenCreateIdempotencyStatus)
- schema StandaloneTokenCreateIdempotencyStatus: type=string enum=[KeyAccepted,NotRequested,Replayed]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
