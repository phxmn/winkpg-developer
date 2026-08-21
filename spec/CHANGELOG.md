## 8.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field UpdateAnnouncementDtoMergePatch.body: type=string nullable=true maxLength=8192 minLength=10 -> type=string maxLength=8192 minLength=10
- Changed field UpdateAnnouncementDtoMergePatch.concurrencyStamp: type=string nullable=true -> type=string
- Changed field UpdateAnnouncementDtoMergePatch.isEnabled: type=boolean nullable=true -> type=boolean
- Changed field UpdateAnnouncementDtoMergePatch.title: type=string nullable=true maxLength=256 minLength=3 -> type=string maxLength=256 minLength=3

### Additions

- error code Transactions:SandboxAchStatusAlreadyInTargetStatus: 409
- error code Transactions:SandboxAchStatusEnvironmentUnknown: 403
- error code Transactions:SandboxAchStatusMerchantUnknown: 403
- error code Transactions:SandboxAchStatusNotAchSale: 409
- error code Transactions:SandboxAchStatusNotApproved: 409
- error code Transactions:SandboxAchStatusNotLoopbackTransaction: 403
- error code Transactions:SandboxAchStatusNotSandboxTransaction: 403
- error code Transactions:SandboxAchStatusProductionRefused: 403
- error code Transactions:SandboxAchStatusTargetStatusRequired: 400
- error code Transactions:SandboxAchStatusTransactionNotFound: 404
- error code Transactions:SandboxAchStatusTransitionNotAllowed: 409
- field SandboxAchStatusAdvanceRequestDto.nachaReturnCode: type=string nullable=true
- field SandboxAchStatusAdvanceRequestDto.nachaReturnReason: type=string nullable=true maxLength=120
- field SandboxAchStatusAdvanceRequestDto.targetStatus: required SandboxAchTargetStatus
- field SandboxAchStatusAdvanceResultDto.achStatusChangedPublished: type=boolean
- field SandboxAchStatusAdvanceResultDto.isLateReturn: type=boolean
- field SandboxAchStatusAdvanceResultDto.newStatus: type=string nullable=true
- field SandboxAchStatusAdvanceResultDto.previousStatus: type=string nullable=true
- field SandboxAchStatusAdvanceResultDto.returnedPublished: type=boolean
- field SandboxAchStatusAdvanceResultDto.transactionId: type=string format=uuid
- operation POST /api/transactions/{id}/sandbox/ach-status
- parameter POST /api/transactions/{id}/sandbox/ach-status path:id: required type=string format=uuid
- parameter POST /api/transactions/{id}/sandbox/ach-status query:suppressNulls: optional type=boolean
- request body POST /api/transactions/{id}/sandbox/ach-status (application/*+json): optional SandboxAchStatusAdvanceRequestDto
- request body POST /api/transactions/{id}/sandbox/ach-status (application/json): optional SandboxAchStatusAdvanceRequestDto
- request body POST /api/transactions/{id}/sandbox/ach-status (text/json): optional SandboxAchStatusAdvanceRequestDto
- response POST /api/transactions/{id}/sandbox/ach-status 200 (application/json): SandboxAchStatusAdvanceResultDto
- response POST /api/transactions/{id}/sandbox/ach-status 200 (text/json): SandboxAchStatusAdvanceResultDto
- response POST /api/transactions/{id}/sandbox/ach-status 200 (text/plain): SandboxAchStatusAdvanceResultDto
- response POST /api/transactions/{id}/sandbox/ach-status 400 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 400 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 401 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 401 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 403 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 403 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 404 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 404 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 429: no body
- response POST /api/transactions/{id}/sandbox/ach-status 500 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 500 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 501 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 501 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/{id}/sandbox/ach-status default (application/json): RemoteServiceErrorResponse
- schema SandboxAchStatusAdvanceRequestDto: type=object additionalProperties=false
- schema SandboxAchStatusAdvanceResultDto: type=object additionalProperties=false
- schema SandboxAchTargetStatus: type=string enum=[NotEligible,SettlementFailed,SettlementRolledBack,SettlementSucceeded]
- operation id sandboxAchStatusAdvanceAchStatus (POST /api/transactions/{id}/sandbox/ach-status)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
