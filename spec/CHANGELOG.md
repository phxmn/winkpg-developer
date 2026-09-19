## 28.4.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field ImpersonationAccessHistoryDto.records: type=array nullable=true items(ImpersonationAccessRecordDto)
- field ImpersonationAccessHistoryDto.truncated: type=boolean
- field ImpersonationAccessHistoryDto.windowEndUtc: type=string format=date-time
- field ImpersonationAccessHistoryDto.windowStartUtc: type=string format=date-time
- field ImpersonationAccessRecordDto.actorDisplayName: type=string nullable=true
- field ImpersonationAccessRecordDto.actorOrganisation: type=string nullable=true
- field ImpersonationAccessRecordDto.endedAtUtc: type=string format=date-time nullable=true
- field ImpersonationAccessRecordDto.merchantId: type=string format=uuid
- field ImpersonationAccessRecordDto.merchantName: type=string nullable=true
- field ImpersonationAccessRecordDto.mode: allOf(ImpersonationSessionMode)
- field ImpersonationAccessRecordDto.recordsSaved: type=integer format=int32 nullable=true
- field ImpersonationAccessRecordDto.startedAtUtc: type=string format=date-time
- operation GET /api/app/security-overview/impersonation-access-history
- parameter GET /api/app/security-overview/impersonation-access-history query:MerchantId: optional type=string format=uuid
- parameter GET /api/app/security-overview/impersonation-access-history query:suppressNulls: optional type=boolean
- response GET /api/app/security-overview/impersonation-access-history 200 (application/json): ImpersonationAccessHistoryDto
- response GET /api/app/security-overview/impersonation-access-history 200 (text/json): ImpersonationAccessHistoryDto
- response GET /api/app/security-overview/impersonation-access-history 200 (text/plain): ImpersonationAccessHistoryDto
- response GET /api/app/security-overview/impersonation-access-history 400 (application/json): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 400 (text/json): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 400 (text/plain): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 401 (application/json): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 401 (text/json): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 401 (text/plain): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 403 (application/json): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 403 (text/json): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 403 (text/plain): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 404 (application/json): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 404 (text/json): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 404 (text/plain): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 429: no body
- response GET /api/app/security-overview/impersonation-access-history 500 (application/json): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 500 (text/json): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 500 (text/plain): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 501 (application/json): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 501 (text/json): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history 501 (text/plain): RemoteServiceErrorResponse
- response GET /api/app/security-overview/impersonation-access-history default (application/json): RemoteServiceErrorResponse
- schema ImpersonationAccessHistoryDto: type=object additionalProperties=false
- schema ImpersonationAccessRecordDto: type=object additionalProperties=false
- schema ImpersonationSessionMode: type=string enum=[Full,Intersect,ReadOnly,Unspecified]
- operation id securityOverviewGetImpersonationAccessHistory (GET /api/app/security-overview/impersonation-access-history)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
