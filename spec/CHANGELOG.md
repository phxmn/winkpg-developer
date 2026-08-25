## 9.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field ApiKeyCreateDto.allowedCidrs: type=array nullable=true maxLength=64 items(type=string) -> type=array nullable=true items(type=string maxLength=64)
- Changed field ApiKeyUpdateDto.allowedCidrs: type=array nullable=true maxLength=64 items(type=string) -> type=array nullable=true items(type=string maxLength=64)
- Changed field CreateListenSessionInput.eventTypes: required type=array nullable=true maxLength=256 items(type=string) -> required type=array nullable=true items(type=string maxLength=256)
- Changed field HostedPaymentPageCreateDto.allowedEmbeddingDomains: required type=array nullable=true maxLength=253 pattern=^(\*\.)?[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?(\.[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?)*\.[a-zA-Z]{2,}$ items(type=string) -> type=array nullable=true items(type=string maxLength=253 pattern=^(\*\.)?[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?(\.[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?)*\.[a-zA-Z]{2,}$)
- Changed field HostedPaymentPageCreateDto.customFieldNames: required type=array nullable=true maxLength=50 items(type=string) -> type=array nullable=true items(type=string maxLength=50)
- Changed field HostedPaymentPageUpdateDto.allowedEmbeddingDomains: required type=array nullable=true maxLength=253 pattern=^(\*\.)?[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?(\.[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?)*\.[a-zA-Z]{2,}$ items(type=string) -> type=array nullable=true items(type=string maxLength=253 pattern=^(\*\.)?[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?(\.[a-zA-Z0-9]([a-zA-Z0-9\-]*[a-zA-Z0-9])?)*\.[a-zA-Z]{2,}$)
- Changed field HostedPaymentPageUpdateDto.customFieldNames: required type=array nullable=true maxLength=50 items(type=string) -> type=array nullable=true items(type=string maxLength=50)
- Changed field UnregisterWalletMerchantDomainsInput.domains: required type=array nullable=true maxLength=256 items(type=string) -> required type=array nullable=true items(type=string maxLength=256)
- Changed field WalletProviderRegistrationCreateDto.domains: required type=array nullable=true maxLength=256 items(type=string) -> type=array nullable=true items(type=string maxLength=256)
- Changed field WalletProviderRegistrationUpdateDto.domains: required type=array nullable=true maxLength=256 items(type=string) -> type=array nullable=true items(type=string maxLength=256)

### Additions

- field HostedPaymentPageDto.resolvedCustomFields: type=array nullable=true items(HppResolvedCustomFieldDto)
- field HppResolvedCustomFieldDto.decimalPlaces: type=integer format=int32 nullable=true
- field HppResolvedCustomFieldDto.isNumeric: type=boolean
- field HppResolvedCustomFieldDto.isReadOnly: type=boolean
- field HppResolvedCustomFieldDto.isRenderedToPayer: type=boolean
- field HppResolvedCustomFieldDto.isRequired: type=boolean
- field HppResolvedCustomFieldDto.label: type=string nullable=true
- field HppResolvedCustomFieldDto.maxLength: type=integer format=int32
- field HppResolvedCustomFieldDto.name: type=string nullable=true
- field HppResolvedCustomFieldDto.numericMaxValue: type=number format=double nullable=true
- field HppResolvedCustomFieldDto.numericMinValue: type=number format=double nullable=true
- field HppResolvedCustomFieldDto.position: type=integer format=int32
- field HppResolvedCustomFieldDto.regEx: type=string nullable=true
- field HppResolvedCustomFieldDto.regExErrorMessage: type=string nullable=true
- schema HppResolvedCustomFieldDto: type=object additionalProperties=false

### Compatible changes

- Widened field ResellerCreateDto.notes: required type=array nullable=true items(EntityNote) -> type=array nullable=true items(EntityNote)
- Widened field ResellerUpdateDto.notes: required type=array nullable=true items(EntityNote) -> type=array nullable=true items(EntityNote)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
