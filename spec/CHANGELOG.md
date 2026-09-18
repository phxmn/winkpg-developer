## 25.1.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field TransactionStatisticsBucketDto.count: type=integer format=int64
- field TransactionStatisticsBucketDto.key: type=string nullable=true
- field TransactionStatisticsBucketDto.totalAmount: type=number format=double
- field TransactionStatisticsDto.byPaymentType: type=array nullable=true items(TransactionStatisticsBucketDto)
- field TransactionStatisticsDto.byResultCode: type=array nullable=true items(TransactionStatisticsBucketDto)
- field TransactionStatisticsDto.byTransactionType: type=array nullable=true items(TransactionStatisticsBucketDto)
- field TransactionStatisticsDto.totalAmount: type=number format=double
- field TransactionStatisticsDto.transactionCount: type=integer format=int64
- field TransactionStatisticsDto.truncated: type=boolean
- field TransactionStatisticsRequestDto.filter: allOf(FilterGroup)
- field TransactionStatisticsRequestDto.maxCreationTime: type=string format=date-time nullable=true
- field TransactionStatisticsRequestDto.merchantId: type=string format=uuid nullable=true
- field TransactionStatisticsRequestDto.minCreationTime: type=string format=date-time nullable=true
- operation POST /api/transactions/reports/statistics
- parameter POST /api/transactions/reports/statistics query:suppressNulls: optional type=boolean
- request body POST /api/transactions/reports/statistics (application/*+json): optional TransactionStatisticsRequestDto
- request body POST /api/transactions/reports/statistics (application/json): optional TransactionStatisticsRequestDto
- request body POST /api/transactions/reports/statistics (text/json): optional TransactionStatisticsRequestDto
- response POST /api/transactions/reports/statistics 200 (application/json): TransactionStatisticsDto
- response POST /api/transactions/reports/statistics 200 (text/json): TransactionStatisticsDto
- response POST /api/transactions/reports/statistics 200 (text/plain): TransactionStatisticsDto
- response POST /api/transactions/reports/statistics 400 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 400 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 401 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 401 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 403 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 403 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 404 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 404 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 429: no body
- response POST /api/transactions/reports/statistics 500 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 500 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 501 (application/json): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 501 (text/json): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/transactions/reports/statistics default (application/json): RemoteServiceErrorResponse
- schema TransactionStatisticsBucketDto: type=object additionalProperties=false
- schema TransactionStatisticsDto: type=object additionalProperties=false
- schema TransactionStatisticsRequestDto: type=object additionalProperties=false
- operation id transactionStatisticsGetStatistics (POST /api/transactions/reports/statistics)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
