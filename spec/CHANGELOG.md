## 31.7.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Twilio:SendGridRecipientMissing: 400
- field BillingRunEnvironmentCoverageDto.assignedMerchantCount: type=integer format=int32
- field BillingRunEnvironmentCoverageDto.unpricedProductionMerchantCount: type=integer format=int32
- field BillingRunEnvironmentCoverageDto.unpricedSandboxMerchantCount: type=integer format=int32
- field EmailLogDto.recipients: type=string nullable=true
- operation GET /api/billing-runs/environment-coverage
- parameter GET /api/billing-runs/environment-coverage query:PeriodKey: required type=string
- parameter GET /api/billing-runs/environment-coverage query:ResellerId: required type=string format=uuid
- parameter GET /api/billing-runs/environment-coverage query:suppressNulls: optional type=boolean
- response GET /api/billing-runs/environment-coverage 200 (application/json): BillingRunEnvironmentCoverageDto
- response GET /api/billing-runs/environment-coverage 200 (text/json): BillingRunEnvironmentCoverageDto
- response GET /api/billing-runs/environment-coverage 200 (text/plain): BillingRunEnvironmentCoverageDto
- response GET /api/billing-runs/environment-coverage 400 (application/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage 400 (text/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage 400 (text/plain): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage 401 (application/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage 401 (text/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage 401 (text/plain): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage 403 (application/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage 403 (text/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage 403 (text/plain): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage 404: no body
- response GET /api/billing-runs/environment-coverage 429: no body
- response GET /api/billing-runs/environment-coverage 500 (application/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage 500 (text/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage 500 (text/plain): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage 501 (application/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage 501 (text/json): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage 501 (text/plain): RemoteServiceErrorResponse
- response GET /api/billing-runs/environment-coverage default (application/json): RemoteServiceErrorResponse
- schema BillingRunEnvironmentCoverageDto: type=object additionalProperties=false
- operation id billingRunGetEnvironmentCoverage (GET /api/billing-runs/environment-coverage)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
