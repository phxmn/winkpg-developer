## 15.1.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Customers:SandboxRecurringBillingCohortTooLarge: 400
- error code Customers:SandboxRecurringBillingEvidenceUnknown: 403
- error code Customers:SandboxRecurringBillingInProgress: 409
- error code Customers:SandboxRecurringBillingMerchantUnknown: 403
- error code Customers:SandboxRecurringBillingProductionKeyRefused: 403
- error code Customers:SandboxRecurringBillingProductionMerchantRefused: 403
- field SandboxRecurringBillingContractResultDto.amountBilled: type=number format=double
- field SandboxRecurringBillingContractResultDto.contractId: type=string format=uuid
- field SandboxRecurringBillingContractResultDto.customerId: type=string format=uuid
- field SandboxRecurringBillingContractResultDto.failureReason: type=string nullable=true
- field SandboxRecurringBillingContractResultDto.processorResponseCode: type=string nullable=true
- field SandboxRecurringBillingContractResultDto.skipped: type=boolean
- field SandboxRecurringBillingContractResultDto.success: type=boolean
- field SandboxRecurringBillingContractResultDto.transactionId: type=string format=uuid nullable=true
- field SandboxRecurringBillingRunResultDto.advancedContractCount: type=integer format=int32
- field SandboxRecurringBillingRunResultDto.billedContractCount: type=integer format=int32
- field SandboxRecurringBillingRunResultDto.contracts: type=array nullable=true items(SandboxRecurringBillingContractResultDto)
- field SandboxRecurringBillingRunResultDto.failedContractCount: type=integer format=int32
- field SandboxRecurringBillingRunResultDto.merchantId: type=string format=uuid
- field SandboxRecurringBillingRunResultDto.runId: type=string format=uuid
- field SandboxRecurringBillingRunResultDto.skippedContractCount: type=integer format=int32
- field SandboxRecurringBillingRunResultDto.totalAmount: type=number format=double
- operation POST /api/customers/recurring-billing/sandbox/run-now
- parameter POST /api/customers/recurring-billing/sandbox/run-now query:suppressNulls: optional type=boolean
- response POST /api/customers/recurring-billing/sandbox/run-now 200 (application/json): SandboxRecurringBillingRunResultDto
- response POST /api/customers/recurring-billing/sandbox/run-now 200 (text/json): SandboxRecurringBillingRunResultDto
- response POST /api/customers/recurring-billing/sandbox/run-now 200 (text/plain): SandboxRecurringBillingRunResultDto
- response POST /api/customers/recurring-billing/sandbox/run-now 400 (application/json): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 400 (text/json): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 401 (application/json): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 401 (text/json): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 403 (application/json): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 403 (text/json): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 404 (application/json): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 404 (text/json): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 429: no body
- response POST /api/customers/recurring-billing/sandbox/run-now 500 (application/json): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 500 (text/json): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 501 (application/json): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 501 (text/json): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/customers/recurring-billing/sandbox/run-now default (application/json): RemoteServiceErrorResponse
- schema SandboxRecurringBillingContractResultDto: type=object additionalProperties=false
- schema SandboxRecurringBillingRunResultDto: type=object additionalProperties=false
- operation id sandboxRecurringBillingRunNow (POST /api/customers/recurring-billing/sandbox/run-now)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
