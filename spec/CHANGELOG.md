## 3.6.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code KEY_SCOPE_INSUFFICIENT: 403
- field ApiKeyCreateDto.scopes: type=array nullable=true items(type=string)
- field ApiKeyDetailDto.isScopeRestricted: type=boolean readOnly=true
- field ApiKeyDetailDto.scopes: type=array nullable=true items(type=string)
- field ApiKeyDto.scopes: type=array nullable=true items(type=string)
- field ApiKeyRevealedDto.scopes: type=array nullable=true items(type=string)
- field ApiKeyUpdateDto.scopes: type=array nullable=true items(type=string)
- field ResellerCreateDto.processingDefaults: ResellerProcessingDefaults
- field ResellerDto.processingDefaults: ResellerProcessingDefaults
- field ResellerProcessingDefaults.enableCreateIdempotency: type=boolean nullable=true
- field ResellerUpdateDto.processingDefaults: ResellerProcessingDefaults
- schema ResellerProcessingDefaults: type=object additionalProperties=false

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
