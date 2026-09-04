## 18.2.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code HostedPaymentPage:HppSession:CurrencyNotSupported: 400
- field CreateHppSessionInput.currency: type=string nullable=true maxLength=3
- field HppSessionDto.currency: type=string nullable=true
- field HppSessionEffectiveShapeDto.currency: type=string nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
