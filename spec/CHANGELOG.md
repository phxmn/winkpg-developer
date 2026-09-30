## 31.19.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code HostedPaymentPage:Tax:AmountMismatch: 409
- error code HostedPaymentPage:Tax:CouldNotBeCalculated: 409
- error code HostedPaymentPage:Tax:ModeNotAvailable: 409
- field HostedPageFieldsAndPanels.flatTaxRateId: type=string format=uuid nullable=true
- field HostedPageFieldsAndPanels.taxAmountMode: nullable=true allOf(HppTaxAmountMode)
- field HostedPageFieldsAndPanels.taxQuoteAddress: nullable=true allOf(HppTaxQuoteAddress)
- schema HppTaxAmountMode: type=string enum=[CardholderEntered,FlatRate,ProviderCalculated]
- schema HppTaxQuoteAddress: type=string enum=[Billing,Shipping]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
