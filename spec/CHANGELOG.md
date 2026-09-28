## 31.4.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Merchants:ApmWebhookRegistrationNotPerMerchant: 400
- field ApmData.providerInitiatedRefund: type=boolean nullable=true
- field ApmData.providerRefundId: type=string nullable=true
- field ApmData.refundExceededCapacity: type=boolean nullable=true
- field ProcessorProfileDto.webhookRegistrationToken: type=string nullable=true
- field SplitTenderContextDto.maxTenders: type=integer format=int32
- operation GET /api/transactions/{id}/split-tender
- parameter GET /api/transactions/{id}/split-tender path:id: required type=string format=uuid
- parameter GET /api/transactions/{id}/split-tender query:suppressNulls: optional type=boolean
- response GET /api/transactions/{id}/split-tender 200 (application/json): SplitTenderContextDto
- response GET /api/transactions/{id}/split-tender 200 (text/json): SplitTenderContextDto
- response GET /api/transactions/{id}/split-tender 200 (text/plain): SplitTenderContextDto
- response GET /api/transactions/{id}/split-tender 400 (application/json): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 400 (text/json): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 400 (text/plain): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 401 (application/json): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 401 (text/json): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 401 (text/plain): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 403 (application/json): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 403 (text/json): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 403 (text/plain): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 404 (application/json): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 404 (text/json): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 404 (text/plain): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 429: no body
- response GET /api/transactions/{id}/split-tender 500 (application/json): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 500 (text/json): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 500 (text/plain): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 501 (application/json): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 501 (text/json): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender 501 (text/plain): RemoteServiceErrorResponse
- response GET /api/transactions/{id}/split-tender default (application/json): RemoteServiceErrorResponse
- operation id splitTenderGetContext (GET /api/transactions/{id}/split-tender)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
