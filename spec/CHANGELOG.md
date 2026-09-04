## 18.8.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code HostedPaymentPage:HppSession:CreateIdempotencyInProgress: 409
- error code HostedPaymentPage:HppSession:CreateIdempotencyKeyReused: 409
- error code HostedPaymentPage:HppSession:CreateIdempotencySessionGone: 409
- error code HostedPaymentPage:HppSession:CreateIdempotencyStoreUnavailable: 429
- field CreateHppSessionInput.idempotencyKey: type=string nullable=true
- field HppSessionCreatedDto.idempotencyStatus: allOf(HppSessionCreateIdempotencyStatus)
- field TransactionHistoryItem.lifecycleStatus: type=string nullable=true
- response POST /api/hostedpaymentpages/sessions 409 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions 409 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions 409 (text/plain): RemoteServiceErrorResponse
- schema HppSessionCreateIdempotencyStatus: type=string enum=[KeyAccepted,KeyIgnored,NotRequested,Replayed]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
