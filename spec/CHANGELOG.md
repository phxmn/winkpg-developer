## 24.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field InvoiceCreateDto.currency: required type=string nullable=true maxLength=3 -> required type=string nullable=true maxLength=3 minLength=3 pattern=^[A-Za-z]{3}$
- Changed field InvoiceLineItemInputDto.unitPrice: type=number format=double -> type=number format=double minimum=0
- Changed field InvoiceUpdateDto.currency: required type=string nullable=true maxLength=3 -> required type=string nullable=true maxLength=3 minLength=3 pattern=^[A-Za-z]{3}$
- Changed field RecurringInvoiceScheduleCreateDto.currency: required type=string nullable=true maxLength=3 minLength=3 -> required type=string nullable=true maxLength=3 minLength=3 pattern=^[A-Za-z]{3}$
- Changed field RecurringInvoiceScheduleUpdateDto.currency: required type=string nullable=true maxLength=3 minLength=3 -> required type=string nullable=true maxLength=3 minLength=3 pattern=^[A-Za-z]{3}$

### Additions

- error code Invoicing:LineItem:DescriptionRequired: 400

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
