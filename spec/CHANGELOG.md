## 25.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field CustomFieldValueDto.key: type=string nullable=true -> required type=string nullable=true maxLength=100
- Changed field CustomFieldValueDto.label: type=string nullable=true -> type=string nullable=true maxLength=200
- Changed field CustomFieldValueDto.value: type=string nullable=true -> type=string nullable=true maxLength=2000

### Additions

- error code Invoicing:CustomField:DuplicateKey: 400
- error code Invoicing:CustomField:InvalidValue: 400
- error code Invoicing:CustomField:PatternInvalid: 400
- error code Invoicing:CustomField:Required: 400
- error code Invoicing:CustomField:UnknownKey: 400

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
