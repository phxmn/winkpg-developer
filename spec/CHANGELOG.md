## 29.12.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field ExtendMerchantTrialDto.trialExpiresAt: required type=string format=date-time
- field MerchantDto.trialExpiresAt: type=string format=date-time nullable=true
- field MerchantDto.trialExpiryWarnedThresholdDays: type=integer format=int32 nullable=true
- operation POST /api/merchants/{id}/trial/extend
- parameter POST /api/merchants/{id}/trial/extend path:id: required type=string format=uuid
- parameter POST /api/merchants/{id}/trial/extend query:suppressNulls: optional type=boolean
- request body POST /api/merchants/{id}/trial/extend (application/*+json): optional ExtendMerchantTrialDto
- request body POST /api/merchants/{id}/trial/extend (application/json): optional ExtendMerchantTrialDto
- request body POST /api/merchants/{id}/trial/extend (text/json): optional ExtendMerchantTrialDto
- response POST /api/merchants/{id}/trial/extend 200 (application/json): MerchantDto
- response POST /api/merchants/{id}/trial/extend 200 (text/json): MerchantDto
- response POST /api/merchants/{id}/trial/extend 200 (text/plain): MerchantDto
- response POST /api/merchants/{id}/trial/extend 400 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 400 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 401 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 401 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 403 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 403 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 404 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 404 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 429: no body
- response POST /api/merchants/{id}/trial/extend 500 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 500 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 501 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 501 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/trial/extend default (application/json): RemoteServiceErrorResponse
- schema ExtendMerchantTrialDto: type=object additionalProperties=false
- operation id merchantsExtendTrial (POST /api/merchants/{id}/trial/extend)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
