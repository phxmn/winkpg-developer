## 10.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field ApiKeyCreateDto.allowedCidrs: type=array nullable=true items(type=string maxLength=64) -> type=array nullable=true maxItems=50 items(type=string maxLength=64)
- Changed field ApiKeyUpdateDto.allowedCidrs: type=array nullable=true items(type=string maxLength=64) -> type=array nullable=true maxItems=50 items(type=string maxLength=64)
- Changed field CreateListenSessionInput.eventTypes: required type=array nullable=true items(type=string maxLength=256) -> required type=array nullable=true maxItems=50 items(type=string maxLength=256)
- Changed field HostedPaymentPageCreateDto.allowedEmbeddingDomains: type=array nullable=true items(type=string maxLength=253 pattern=^(\*\.)?[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?(\.[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?)*\.[a-zA-Z]{2,}$) -> type=array nullable=true maxItems=20 items(type=string maxLength=253 pattern=^(\*\.)?[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?(\.[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?)*\.[a-zA-Z]{2,}$)
- Changed field HostedPaymentPageCreateDto.customFieldNames: type=array nullable=true items(type=string maxLength=50) -> type=array nullable=true maxItems=100 items(type=string maxLength=50)
- Changed field HostedPaymentPageUpdateDto.allowedEmbeddingDomains: type=array nullable=true items(type=string maxLength=253 pattern=^(\*\.)?[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?(\.[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?)*\.[a-zA-Z]{2,}$) -> type=array nullable=true maxItems=20 items(type=string maxLength=253 pattern=^(\*\.)?[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?(\.[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?)*\.[a-zA-Z]{2,}$)
- Changed field HostedPaymentPageUpdateDto.customFieldNames: type=array nullable=true items(type=string maxLength=50) -> type=array nullable=true maxItems=100 items(type=string maxLength=50)
- Changed field Level3Data.lineItems: required type=array nullable=true items(Level3LineItem) -> required type=array nullable=true maxItems=250 items(Level3LineItem)
- Changed field SettlementOverrideRequestDto.transactionIds: required type=array nullable=true items(type=string format=uuid) -> required type=array nullable=true maxItems=200 items(type=string format=uuid)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
