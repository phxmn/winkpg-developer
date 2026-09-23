## 29.2.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field HostedPaymentPageCreateDto.successRedirectDelaySeconds: type=integer format=int32 nullable=true minimum=0 maximum=30
- field HostedPaymentPageDto.successRedirectDelaySeconds: type=integer format=int32 nullable=true
- field HostedPaymentPageUpdateDto.successRedirectDelaySeconds: type=integer format=int32 nullable=true minimum=0 maximum=30

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
