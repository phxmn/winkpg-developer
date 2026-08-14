## 3.5.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field MerchantProcessorCapabilitiesDto.merchantId: type=string format=uuid
- field MerchantProcessorCapabilitiesDto.profiles: type=array nullable=true items(ProcessorProfileCapabilitiesDto)
- field ProcessorProfileCapabilitiesDto.processorId: type=string nullable=true
- field ProcessorProfileCapabilitiesDto.processorName: type=string nullable=true
- field ProcessorProfileCapabilitiesDto.processorProfileId: type=string format=uuid
- field ProcessorProfileCapabilitiesDto.reversalWindowSeconds: type=integer format=int32 nullable=true
- field ProcessorProfileCapabilitiesDto.supportedAdjustmentTypes: AdjustmentTypes
- field ProcessorProfileCapabilitiesDto.supportsPartialRefund: type=boolean
- field ProcessorProfileCapabilitiesDto.supportsPartialReversal: type=boolean
- field ProcessorProfileCapabilitiesDto.supportsReversal: type=boolean
- field ProcessorProfileCapabilitiesDto.supportsVoid: type=boolean
- field ProcessorProfileCapabilitiesDto.supportsZeroDollarVerification: type=boolean
- operation GET /api/merchants/{id}/processor-capabilities
- parameter GET /api/merchants/{id}/processor-capabilities path:id: required type=string format=uuid
- parameter GET /api/merchants/{id}/processor-capabilities query:suppressNulls: optional type=boolean
- response GET /api/merchants/{id}/processor-capabilities 200 (application/json): MerchantProcessorCapabilitiesDto
- response GET /api/merchants/{id}/processor-capabilities 200 (text/json): MerchantProcessorCapabilitiesDto
- response GET /api/merchants/{id}/processor-capabilities 200 (text/plain): MerchantProcessorCapabilitiesDto
- response GET /api/merchants/{id}/processor-capabilities 400 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 400 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 400 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 401 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 401 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 401 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 403 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 403 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 403 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 404 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 404 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 404 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 500 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 500 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 500 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 501 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 501 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities 501 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/processor-capabilities default (application/json): RemoteServiceErrorResponse
- schema AdjustmentTypes: type=string enum=[IncrementalAuthorization,None,OfflineAdjustment]
- schema MerchantProcessorCapabilitiesDto: type=object additionalProperties=false
- schema ProcessorProfileCapabilitiesDto: type=object additionalProperties=false
- operation id merchantProcessorCapabilityGet (GET /api/merchants/{id}/processor-capabilities)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
