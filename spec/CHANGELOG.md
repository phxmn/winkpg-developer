## 22.6.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code HostedPaymentPage:Template:SourceNotSaved: 409
- field HostedPaymentPageCreateDto.createdFromTemplateId: type=string format=uuid nullable=true
- field HostedPaymentPageDto.createdFromTemplateId: type=string format=uuid nullable=true
- field HostedPaymentPageUpdateDto.createdFromTemplateId: type=string format=uuid nullable=true
- field InvoiceProductCreateDto.imageBlobName: type=string nullable=true
- field InvoiceProductDto.imageBlobName: type=string nullable=true
- field InvoiceProductUpdateDto.imageBlobName: type=string nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
