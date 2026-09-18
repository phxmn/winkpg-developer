## 26.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field CreditNoteCreateDto.billerId: type=string format=uuid -> required type=string format=uuid
- Changed field InvoiceCreateDto.billerId: type=string format=uuid -> required type=string format=uuid
- Changed field InvoiceCustomFieldDefinitionCreateDto.billerId: type=string format=uuid -> required type=string format=uuid
- Changed field InvoiceProductCreateDto.billerId: type=string format=uuid -> required type=string format=uuid
- Changed field InvoiceTaxRateCreateDto.billerId: type=string format=uuid -> required type=string format=uuid
- Changed field InvoiceTemplateCreateDto.billerId: type=string format=uuid -> required type=string format=uuid

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
