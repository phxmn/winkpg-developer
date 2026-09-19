## 28.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field InvoiceCustomFieldDefinitionCreateDto.key: type=string nullable=true -> required type=string nullable=true maxLength=100

### Additions

- error code Invoicing:CustomFieldDefinition:KeyAlreadyExists: 409

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
