## 20.5.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field OpenBatchesSummaryDto.lastUpdatedUtc: type=string format=date-time
- field OpenBatchesSummaryDto.merchantId: type=string format=uuid
- field OpenBatchesSummaryDto.processors: type=array nullable=true items(ProcessorOpenBatchGroupDto)
- field ProcessorOpenBatchGroupDto.isProcessorInactive: type=boolean
- field ProcessorOpenBatchGroupDto.isUnassigned: type=boolean
- field ProcessorOpenBatchGroupDto.lastUpdatedUtc: type=string format=date-time
- field ProcessorOpenBatchGroupDto.openBatchId: type=string nullable=true
- field ProcessorOpenBatchGroupDto.paymentTypes: type=array nullable=true items(PaymentTypeOpenBatchSummaryDto)
- field ProcessorOpenBatchGroupDto.processorBatchId: type=string nullable=true
- field ProcessorOpenBatchGroupDto.processorKey: type=string nullable=true
- field ProcessorOpenBatchGroupDto.processorName: type=string nullable=true
- field ProcessorOpenBatchGroupDto.totals: allOf(OpenBatchTotalsDto)
- operation GET /api/transactions/settlements/open-batches
- parameter GET /api/transactions/settlements/open-batches query:MerchantId: optional type=string format=uuid
- parameter GET /api/transactions/settlements/open-batches query:OpenBatchId: optional type=string
- parameter GET /api/transactions/settlements/open-batches query:suppressNulls: optional type=boolean
- response GET /api/transactions/settlements/open-batches 200 (application/json): OpenBatchesSummaryDto
- response GET /api/transactions/settlements/open-batches 200 (text/json): OpenBatchesSummaryDto
- response GET /api/transactions/settlements/open-batches 200 (text/plain): OpenBatchesSummaryDto
- response GET /api/transactions/settlements/open-batches 400 (application/json): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 400 (text/json): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 400 (text/plain): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 401 (application/json): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 401 (text/json): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 401 (text/plain): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 403 (application/json): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 403 (text/json): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 403 (text/plain): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 404 (application/json): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 404 (text/json): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 404 (text/plain): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 429: no body
- response GET /api/transactions/settlements/open-batches 500 (application/json): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 500 (text/json): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 500 (text/plain): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 501 (application/json): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 501 (text/json): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches 501 (text/plain): RemoteServiceErrorResponse
- response GET /api/transactions/settlements/open-batches default (application/json): RemoteServiceErrorResponse
- schema OpenBatchesSummaryDto: type=object additionalProperties=false
- schema ProcessorOpenBatchGroupDto: type=object additionalProperties=false
- operation id settlementGetOpenBatchesSummary (GET /api/transactions/settlements/open-batches)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
