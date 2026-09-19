## 28.1.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Shipping:QuoteRateLimitExceeded: 429
- field ShippingRateQuoteDto.amount: type=number format=double
- field ShippingRateQuoteDto.carrier: type=string nullable=true
- field ShippingRateQuoteDto.currency: type=string nullable=true
- field ShippingRateQuoteDto.estimatedTransitDays: type=integer format=int32 nullable=true
- field ShippingRateQuoteDto.providerRateId: type=string nullable=true
- field ShippingRateQuoteDto.serviceLevelCode: type=string nullable=true
- field ShippingRateQuoteDto.serviceLevelName: type=string nullable=true
- field ShippingRateQuoteParcelDto.dimensionUnit: allOf(ShippingDimensionUnit)
- field ShippingRateQuoteParcelDto.height: type=number format=double minimum=0 maximum=10000 exclusiveMinimum=true
- field ShippingRateQuoteParcelDto.length: type=number format=double minimum=0 maximum=10000 exclusiveMinimum=true
- field ShippingRateQuoteParcelDto.weight: type=number format=double minimum=0 maximum=100000 exclusiveMinimum=true
- field ShippingRateQuoteParcelDto.weightUnit: allOf(ShippingWeightUnit)
- field ShippingRateQuoteParcelDto.width: type=number format=double minimum=0 maximum=10000 exclusiveMinimum=true
- field ShippingRateQuoteRequestDto.carriers: type=array nullable=true items(type=string maxLength=100)
- field ShippingRateQuoteRequestDto.currency: type=string nullable=true
- field ShippingRateQuoteRequestDto.destination: required allOf(Address)
- field ShippingRateQuoteRequestDto.destinationIsResidential: type=boolean nullable=true
- field ShippingRateQuoteRequestDto.merchantId: required type=string format=uuid nullable=true
- field ShippingRateQuoteRequestDto.origin: allOf(Address)
- field ShippingRateQuoteRequestDto.originId: type=string format=uuid nullable=true
- field ShippingRateQuoteRequestDto.parcelPresetIds: type=array nullable=true items(type=string format=uuid)
- field ShippingRateQuoteRequestDto.parcels: type=array nullable=true items(ShippingRateQuoteParcelDto)
- field ShippingRateQuoteRequestDto.serviceLevels: type=array nullable=true items(type=string maxLength=100)
- field ShippingRateQuoteResultDto.isSuccess: type=boolean readOnly=true
- field ShippingRateQuoteResultDto.messages: type=array nullable=true items(type=string)
- field ShippingRateQuoteResultDto.outcome: allOf(ShippingRateOutcome)
- field ShippingRateQuoteResultDto.providerName: type=string nullable=true
- field ShippingRateQuoteResultDto.quotes: type=array nullable=true items(ShippingRateQuoteDto)
- operation POST /api/shipping/rate-quotes
- parameter POST /api/shipping/rate-quotes query:suppressNulls: optional type=boolean
- request body POST /api/shipping/rate-quotes (application/*+json): optional ShippingRateQuoteRequestDto
- request body POST /api/shipping/rate-quotes (application/json): optional ShippingRateQuoteRequestDto
- request body POST /api/shipping/rate-quotes (text/json): optional ShippingRateQuoteRequestDto
- response POST /api/shipping/rate-quotes 200 (application/json): ShippingRateQuoteResultDto
- response POST /api/shipping/rate-quotes 200 (text/json): ShippingRateQuoteResultDto
- response POST /api/shipping/rate-quotes 200 (text/plain): ShippingRateQuoteResultDto
- response POST /api/shipping/rate-quotes 400 (application/json): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 400 (text/json): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 401 (application/json): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 401 (text/json): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 403 (application/json): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 403 (text/json): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 404 (application/json): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 404 (text/json): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 429: no body
- response POST /api/shipping/rate-quotes 500 (application/json): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 500 (text/json): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 501 (application/json): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 501 (text/json): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/shipping/rate-quotes default (application/json): RemoteServiceErrorResponse
- schema ShippingRateOutcome: type=string enum=[AuthenticationFailed,InvalidRequest,MalformedResponse,Misconfigured,NoRatesForLane,NotConfigured,ProviderUnavailable,RateLimited,Success,Timeout]
- schema ShippingRateQuoteDto: type=object additionalProperties=false
- schema ShippingRateQuoteParcelDto: type=object additionalProperties=false
- schema ShippingRateQuoteRequestDto: type=object additionalProperties=false
- schema ShippingRateQuoteResultDto: type=object additionalProperties=false
- operation id shippingRateQuoteGetQuote (POST /api/shipping/rate-quotes)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
