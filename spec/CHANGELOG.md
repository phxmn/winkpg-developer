## 22.11.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field ListResultDtoOfPromotionCodeSuggestionDto.items: type=array nullable=true items(PromotionCodeSuggestionDto)
- field PromotionCodeSuggestionDto.code: type=string nullable=true
- field SuggestPromotionCodesInput.appliesToScope: nullable=true allOf(PromotionAppliesToScope)
- field SuggestPromotionCodesInput.count: type=integer format=int32 minimum=1 maximum=10
- field SuggestPromotionCodesInput.currency: type=string nullable=true
- field SuggestPromotionCodesInput.discountType: nullable=true allOf(PromotionDiscountType)
- field SuggestPromotionCodesInput.durationCycles: type=integer format=int32 nullable=true
- field SuggestPromotionCodesInput.durationMode: nullable=true allOf(PromotionDurationMode)
- field SuggestPromotionCodesInput.excludePromotionId: type=string format=uuid nullable=true
- field SuggestPromotionCodesInput.merchantId: type=string format=uuid nullable=true
- field SuggestPromotionCodesInput.name: type=string nullable=true maxLength=128
- field SuggestPromotionCodesInput.startsAtUtc: type=string format=date-time nullable=true
- field SuggestPromotionCodesInput.style: allOf(PromotionCodeSuggestionStyle)
- field SuggestPromotionCodesInput.value: type=number format=double nullable=true
- operation POST /api/promotions/suggest-codes
- parameter POST /api/promotions/suggest-codes query:suppressNulls: optional type=boolean
- request body POST /api/promotions/suggest-codes (application/*+json): optional SuggestPromotionCodesInput
- request body POST /api/promotions/suggest-codes (application/json): optional SuggestPromotionCodesInput
- request body POST /api/promotions/suggest-codes (text/json): optional SuggestPromotionCodesInput
- response POST /api/promotions/suggest-codes 200 (application/json): ListResultDtoOfPromotionCodeSuggestionDto
- response POST /api/promotions/suggest-codes 200 (text/json): ListResultDtoOfPromotionCodeSuggestionDto
- response POST /api/promotions/suggest-codes 200 (text/plain): ListResultDtoOfPromotionCodeSuggestionDto
- response POST /api/promotions/suggest-codes 400 (application/json): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 400 (text/json): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 401 (application/json): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 401 (text/json): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 403 (application/json): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 403 (text/json): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 404 (application/json): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 404 (text/json): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 429: no body
- response POST /api/promotions/suggest-codes 500 (application/json): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 500 (text/json): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 501 (application/json): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 501 (text/json): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/promotions/suggest-codes default (application/json): RemoteServiceErrorResponse
- schema ListResultDtoOfPromotionCodeSuggestionDto: type=object additionalProperties=false
- schema PromotionCodeSuggestionDto: type=object additionalProperties=false
- schema PromotionCodeSuggestionStyle: type=string enum=[Memorable,Private]
- schema SuggestPromotionCodesInput: type=object additionalProperties=false
- operation id promotionsSuggestCodes (POST /api/promotions/suggest-codes)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
