## 31.22.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code HostedPaymentPage:HppSession:FeeAmountModeNotApplicable: 400
- error code HostedPaymentPage:HppSession:FeeAmountModeRequiresPrefill: 400
- field CreateHppSessionInput.shippingAmountMode: nullable=true allOf(HppSessionAmountMode)
- field CreateHppSessionInput.taxAmountMode: nullable=true allOf(HppSessionAmountMode)
- field HppSessionDto.shippingAmountMode: allOf(HppSessionAmountMode)
- field HppSessionDto.taxAmountMode: allOf(HppSessionAmountMode)
- field HppSessionEffectiveShapeDto.shippingAmountMode: allOf(HppSessionAmountMode)
- field HppSessionEffectiveShapeDto.taxAmountMode: allOf(HppSessionAmountMode)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
