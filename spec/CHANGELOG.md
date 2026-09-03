## 17.2.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field CreateHppSessionInput.declineRetryMode: nullable=true allOf(HppDeclineRetryMode)
- field HostedPaymentPageCreateDto.declineRetryMode: nullable=true allOf(HppDeclineRetryMode)
- field HostedPaymentPageDto.declineRetryMode: nullable=true allOf(HppDeclineRetryMode)
- field HostedPaymentPageUpdateDto.declineRetryMode: nullable=true allOf(HppDeclineRetryMode)
- field HppSessionDto.declineReleaseCount: type=integer format=int32 nullable=true
- field HppSessionDto.declineRetryMode: nullable=true allOf(HppDeclineRetryMode)
- field HppSessionDto.lastDeclineReleasedAt: type=string format=date-time nullable=true
- field HppSessionDto.lastDeclinedTransactionId: type=string format=uuid nullable=true
- field HppSessionEffectiveShapeDto.declineRetryMode: allOf(HppDeclineRetryMode)
- field HppSessionEffectiveShapeDto.remainingDeclineReleases: type=integer format=int32
- parameter GET /api/accounting/oauth/callback query:RealmId: optional type=string
- schema HppDeclineRetryMode: type=string enum=[ConsumeOnDecline,ReleaseOnDecline]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
