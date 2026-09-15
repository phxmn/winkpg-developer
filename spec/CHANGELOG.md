## 22.12.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Merchants:CannotPromoteSuspendedMerchant: 409
- field MerchantDto.promotedAt: type=string format=date-time nullable=true
- field MerchantDto.promotedByUserId: type=string format=uuid nullable=true
- operation POST /api/merchants/{id}/promote
- parameter POST /api/merchants/{id}/promote path:id: required type=string format=uuid
- parameter POST /api/merchants/{id}/promote query:suppressNulls: optional type=boolean
- response POST /api/merchants/{id}/promote 200 (application/json): MerchantDto
- response POST /api/merchants/{id}/promote 200 (text/json): MerchantDto
- response POST /api/merchants/{id}/promote 200 (text/plain): MerchantDto
- response POST /api/merchants/{id}/promote 400 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 400 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 401 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 401 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 403 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 403 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 404 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 404 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 429: no body
- response POST /api/merchants/{id}/promote 500 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 500 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 501 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 501 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/promote default (application/json): RemoteServiceErrorResponse
- operation id merchantsPromoteToProduction (POST /api/merchants/{id}/promote)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
