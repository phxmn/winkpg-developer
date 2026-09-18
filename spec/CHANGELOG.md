## 26.3.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code EntityTemplates:DuplicateTemplateName: 409
- error code EntityTemplates:MerchantTemplateCannotBePublished: 400
- error code EntityTemplates:TemplatingDisabled: 409
- field CustomerCreateDto.createdFromTemplateId: type=string format=uuid nullable=true
- field CustomerDto.createdFromTemplateId: type=string format=uuid nullable=true
- field CustomerUpdateDto.createdFromTemplateId: type=string format=uuid nullable=true
- field MerchantCreateDto.createdFromTemplateId: type=string format=uuid nullable=true
- field MerchantDto.createdFromTemplateId: type=string format=uuid nullable=true
- field MerchantUpdateDto.createdFromTemplateId: type=string format=uuid nullable=true
- field ResellerCreateDto.createdFromTemplateId: type=string format=uuid nullable=true
- field ResellerDto.createdFromTemplateId: type=string format=uuid nullable=true
- field ResellerUpdateDto.createdFromTemplateId: type=string format=uuid nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
