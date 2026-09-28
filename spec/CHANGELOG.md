## 31.3.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Transactions:SplitTenderAmountExceedsRemaining: 409
- error code Transactions:SplitTenderContinuationAmountInvalid: 400
- error code Transactions:SplitTenderContinuationLinkedToOriginal: 400
- error code Transactions:SplitTenderContinuationNotSale: 400
- error code Transactions:SplitTenderGroupBusy: 409
- error code Transactions:SplitTenderGroupNotFound: 404
- error code Transactions:SplitTenderGroupNotOpen: 409
- error code Transactions:SplitTenderMaxTendersReached: 409
- error code Transactions:SplitTenderTenderNotSupported: 400
- field BillingRunResultDto.merchantEnvironment: nullable=true allOf(MerchantEnvironment)
- field BillingRunResultDto.unmatchedUsage: type=array nullable=true items(BillingRunUnmatchedUsageDto)
- field BillingRunUnmatchedUsageDto.category: type=string nullable=true
- field BillingRunUnmatchedUsageDto.displayName: type=string nullable=true
- field BillingRunUnmatchedUsageDto.environment: nullable=true allOf(UsageEnvironment)
- field BillingRunUnmatchedUsageDto.quantity: type=integer format=int64 nullable=true
- field BillingRunUnmatchedUsageDto.skuCode: type=string nullable=true
- field Contract.upcomingChargeReminderSentForRun: type=string format=date-time nullable=true
- field ProcessingSettingsDto.taxGatewayFees: type=boolean nullable=true
- operation POST /api/transactions/{id}/split-tender/continuations
- parameter POST /api/transactions/{id}/split-tender/continuations path:id: required type=string format=uuid
- parameter POST /api/transactions/{id}/split-tender/continuations query:suppressNulls: optional type=boolean
- request body POST /api/transactions/{id}/split-tender/continuations (application/*+json): optional TransactionCreateDto
- request body POST /api/transactions/{id}/split-tender/continuations (application/json): optional TransactionCreateDto
- request body POST /api/transactions/{id}/split-tender/continuations (text/json): optional TransactionCreateDto
- response POST /api/transactions/{id}/split-tender/continuations 200 (application/json): TransactionDto
- response POST /api/transactions/{id}/split-tender/continuations 200 (text/json): TransactionDto
- response POST /api/transactions/{id}/split-tender/continuations 200 (text/plain): TransactionDto
- response POST /api/transactions/{id}/split-tender/continuations 400 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 400 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 401 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 401 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 403 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 403 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 404 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 404 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 429: no body
- response POST /api/transactions/{id}/split-tender/continuations 500 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 500 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 501 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 501 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/split-tender/continuations default (application/json): RemoteServiceErrorResponse
- schema BillingRunUnmatchedUsageDto: type=object additionalProperties=false
- operation id splitTenderCreateContinuation (POST /api/transactions/{id}/split-tender/continuations)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
