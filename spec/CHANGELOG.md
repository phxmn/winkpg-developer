## 29.13.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field BillingRunDto.resellerName: type=string nullable=true
- field BillingRunTargetResellerDto.id: type=string format=uuid
- field BillingRunTargetResellerDto.isOwnReseller: type=boolean
- field BillingRunTargetResellerDto.name: type=string nullable=true
- field CreateBillingRunInput.resellerId: type=string format=uuid nullable=true
- field ListResultDtoOfBillingRunTargetResellerDto.items: type=array nullable=true items(BillingRunTargetResellerDto)
- operation GET /api/billing-runs/target-resellers
- parameter GET /api/billing-runs/target-resellers query:suppressNulls: optional type=boolean
- response GET /api/billing-runs/target-resellers 200 (application/json): ListResultDtoOfBillingRunTargetResellerDto
- response GET /api/billing-runs/target-resellers 200 (text/json): ListResultDtoOfBillingRunTargetResellerDto
- response GET /api/billing-runs/target-resellers 200 (text/plain): ListResultDtoOfBillingRunTargetResellerDto
- response GET /api/billing-runs/target-resellers 400 (application/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 400 (text/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 400 (text/plain): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 401 (application/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 401 (text/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 401 (text/plain): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 403 (application/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 403 (text/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 403 (text/plain): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 404 (application/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 404 (text/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 404 (text/plain): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 429: no body
- response GET /api/billing-runs/target-resellers 500 (application/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 500 (text/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 500 (text/plain): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 501 (application/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 501 (text/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers 501 (text/plain): RemoteServiceErrorResponse
- response GET /api/billing-runs/target-resellers default (application/json): RemoteServiceErrorResponse
- schema BillingRunTargetResellerDto: type=object additionalProperties=false
- schema ListResultDtoOfBillingRunTargetResellerDto: type=object additionalProperties=false
- operation id billingRunGetRunTargetResellers (GET /api/billing-runs/target-resellers)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
