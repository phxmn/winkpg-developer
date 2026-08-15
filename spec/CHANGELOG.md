## 4.2.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Transactions:SandboxCloseCohortTooLarge: 409
- error code Transactions:SandboxCloseEnvironmentUnknown: 403
- error code Transactions:SandboxCloseInProgress: 409
- error code Transactions:SandboxCloseMerchantUnknown: 403
- error code Transactions:SandboxCloseProductionRefused: 403
- field SandboxSettlementBatchDto.processorBatchId: type=string nullable=true
- field SandboxSettlementBatchDto.settlementBatchId: type=string format=uuid
- field SandboxSettlementBatchDto.totalAmount: type=number format=double
- field SandboxSettlementBatchDto.transactionCount: type=integer format=int32
- field SandboxSettlementCloseResultDto.batches: type=array nullable=true items(SandboxSettlementBatchDto)
- field SandboxSettlementCloseResultDto.failedBatchCount: type=integer format=int32
- field SandboxSettlementCloseResultDto.merchantId: type=string format=uuid
- field SandboxSettlementCloseResultDto.settledTotalAmount: type=number format=double
- field SandboxSettlementCloseResultDto.settledTransactionCount: type=integer format=int32
- operation POST /api/transactions/settlements/sandbox/close
- parameter POST /api/transactions/settlements/sandbox/close query:suppressNulls: optional type=boolean
- response POST /api/transactions/settlements/sandbox/close 200 (application/json): SandboxSettlementCloseResultDto
- response POST /api/transactions/settlements/sandbox/close 200 (text/json): SandboxSettlementCloseResultDto
- response POST /api/transactions/settlements/sandbox/close 200 (text/plain): SandboxSettlementCloseResultDto
- response POST /api/transactions/settlements/sandbox/close 400 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 400 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 401 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 401 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 403 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 403 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 404 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 404 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 500 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 500 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 501 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 501 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/settlements/sandbox/close default (application/json): RemoteServiceErrorResponse
- schema SandboxSettlementBatchDto: type=object additionalProperties=false
- schema SandboxSettlementCloseResultDto: type=object additionalProperties=false
- operation id sandboxSettlementClose (POST /api/transactions/settlements/sandbox/close)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
