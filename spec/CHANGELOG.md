## 22.19.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code KEY_SUSPENDED: 401
- field ApiKeyDetailDto.anomalySourceAction: nullable=true allOf(ApiKeyAnomalyAction)
- field ApiKeyDetailDto.isSuspended: type=boolean readOnly=true
- field ApiKeyDetailDto.suspendedAt: type=string format=date-time nullable=true
- field ApiKeyDetailDto.suspendedBy: type=string format=uuid nullable=true
- field ApiKeyDetailDto.suspensionReason: type=string nullable=true
- field ReinstateApiKeyDto.justification: required type=string nullable=true maxLength=256
- field SuspendApiKeyDto.reason: type=string nullable=true maxLength=256
- operation POST /api/api-keys/{id}/reinstate
- operation POST /api/api-keys/{id}/suspend
- parameter POST /api/api-keys/{id}/reinstate path:id: required type=string format=uuid
- parameter POST /api/api-keys/{id}/reinstate query:suppressNulls: optional type=boolean
- parameter POST /api/api-keys/{id}/suspend path:id: required type=string format=uuid
- parameter POST /api/api-keys/{id}/suspend query:suppressNulls: optional type=boolean
- request body POST /api/api-keys/{id}/reinstate (application/*+json): optional ReinstateApiKeyDto
- request body POST /api/api-keys/{id}/reinstate (application/json): optional ReinstateApiKeyDto
- request body POST /api/api-keys/{id}/reinstate (text/json): optional ReinstateApiKeyDto
- request body POST /api/api-keys/{id}/suspend (application/*+json): optional SuspendApiKeyDto
- request body POST /api/api-keys/{id}/suspend (application/json): optional SuspendApiKeyDto
- request body POST /api/api-keys/{id}/suspend (text/json): optional SuspendApiKeyDto
- response POST /api/api-keys/{id}/reinstate 200 (application/json): ApiKeyDto
- response POST /api/api-keys/{id}/reinstate 200 (text/json): ApiKeyDto
- response POST /api/api-keys/{id}/reinstate 200 (text/plain): ApiKeyDto
- response POST /api/api-keys/{id}/reinstate 400 (application/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 400 (text/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 401 (application/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 401 (text/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 403 (application/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 403 (text/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 404 (application/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 404 (text/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 429: no body
- response POST /api/api-keys/{id}/reinstate 500 (application/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 500 (text/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 501 (application/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 501 (text/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/reinstate default (application/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 200 (application/json): ApiKeyDto
- response POST /api/api-keys/{id}/suspend 200 (text/json): ApiKeyDto
- response POST /api/api-keys/{id}/suspend 200 (text/plain): ApiKeyDto
- response POST /api/api-keys/{id}/suspend 400 (application/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 400 (text/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 401 (application/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 401 (text/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 403 (application/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 403 (text/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 404 (application/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 404 (text/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 429: no body
- response POST /api/api-keys/{id}/suspend 500 (application/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 500 (text/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 501 (application/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 501 (text/json): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/api-keys/{id}/suspend default (application/json): RemoteServiceErrorResponse
- schema ApiKeyAnomalyAction: type=string enum=[LogOnly,Notify,Suspend]
- schema ReinstateApiKeyDto: type=object additionalProperties=false
- schema SuspendApiKeyDto: type=object additionalProperties=false
- operation id apiKeysReinstate (POST /api/api-keys/{id}/reinstate)
- operation id apiKeysSuspend (POST /api/api-keys/{id}/suspend)

### Compatible changes

- Widened schema ApiKeyStatus: type=string enum=[Active,Revoked] -> type=string enum=[Active,Revoked,Suspended]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
