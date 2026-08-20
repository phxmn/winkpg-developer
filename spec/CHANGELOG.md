## 7.18.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Merchants:ProcessorRoutingAttestationStale: 409
- error code Merchants:ProcessorRoutingTargetProfileUnusable: 409
- error code Transactions:SurchargeIsGatewayComputed: 400
- field HostedPaymentPageCreateDto.hideMerchantName: type=boolean nullable=true
- field HostedPaymentPageCreateDto.hideTitle: type=boolean nullable=true
- field HostedPaymentPageDto.hideMerchantName: type=boolean nullable=true
- field HostedPaymentPageDto.hideTitle: type=boolean nullable=true
- field HostedPaymentPageUpdateDto.hideMerchantName: type=boolean nullable=true
- field HostedPaymentPageUpdateDto.hideTitle: type=boolean nullable=true
- field ProcessingSettingsDto.processorRoutingRuleSet: ProcessorRoutingRuleSetDto
- field ProcessorRoutingAttestationDto.attestedAtUtc: type=string format=date-time nullable=true
- field ProcessorRoutingAttestationDto.attestedBy: type=string format=uuid nullable=true
- field ProcessorRoutingAttestationDto.note: type=string nullable=true maxLength=1024
- field ProcessorRoutingRuleDto.amountMax: type=number format=double nullable=true minimum=0
- field ProcessorRoutingRuleDto.amountMin: type=number format=double nullable=true minimum=0
- field ProcessorRoutingRuleDto.cardBrands: type=array nullable=true items(type=string)
- field ProcessorRoutingRuleDto.channels: type=array nullable=true items(TransactionSource)
- field ProcessorRoutingRuleDto.fallthroughOnUnavailable: type=boolean
- field ProcessorRoutingRuleDto.isActive: type=boolean
- field ProcessorRoutingRuleDto.name: type=string nullable=true maxLength=128
- field ProcessorRoutingRuleDto.targetProcessorProfileId: required type=string format=uuid
- field ProcessorRoutingRuleDto.tenderTypes: type=array nullable=true items(CardTenderType)
- field ProcessorRoutingRuleSetDto.attestation: ProcessorRoutingAttestationDto
- field ProcessorRoutingRuleSetDto.enabled: type=boolean
- field ProcessorRoutingRuleSetDto.rules: type=array nullable=true items(ProcessorRoutingRuleDto)
- field TransactionCreateDto.description: type=string nullable=true maxLength=100
- field TransactionDto.description: type=string nullable=true
- schema ProcessorRoutingAttestationDto: type=object additionalProperties=false
- schema ProcessorRoutingRuleDto: type=object additionalProperties=false
- schema ProcessorRoutingRuleSetDto: type=object additionalProperties=false

### Compatible changes

- Widened field HostedPaymentPageCreateDto.title: type=string nullable=true maxLength=100 minLength=5 -> type=string nullable=true maxLength=100
- Widened field HostedPaymentPageUpdateDto.title: type=string nullable=true maxLength=100 minLength=5 -> type=string nullable=true maxLength=100

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
