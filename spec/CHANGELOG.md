## 20.2.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code EntityTemplates:DefaultTemplateEntityTypeNotSupported: 400
- error code EntityTemplates:DefaultTemplateNotVisibleToScope: 400
- error code EntityTemplates:DefaultTemplateScopeNotAllowed: 400
- error code EntityTemplates:DefaultTemplateTemplaterUnavailable: 409
- field PaymentTokenDto.customerId: type=string format=uuid nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
