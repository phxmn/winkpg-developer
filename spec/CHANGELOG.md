## 26.2.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field InvoiceProductCreateDto.defaultTaxRateId: type=string format=uuid nullable=true
- field InvoiceProductDto.defaultTaxRateId: type=string format=uuid nullable=true
- field InvoiceProductUpdateDto.defaultTaxRateId: type=string format=uuid nullable=true
- field PaymentEncryptionBindingConnectionTestResultDto.outcome: type=string nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
