## 31.1.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field ProcessingSettingsDto.convenienceFeeIncludesShipping: type=boolean nullable=true
- field ProcessingSettingsDto.surchargeIncludesShipping: type=boolean nullable=true
- field ProcessingSettingsDto.taxShippingAmount: type=boolean nullable=true
- field SurchargeResult.baseComponents: type=string nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
