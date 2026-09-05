## 18.9.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code HostedPaymentPage:HppSession:Completed: 409
- error code HostedPaymentPage:HppSession:ReusableNotApplicable: 400
- field ContinuationPagedResultDtoOfHppSessionCompletionDto.approxTotalCount: type=integer format=int64 nullable=true
- field ContinuationPagedResultDtoOfHppSessionCompletionDto.items: type=array nullable=true items(HppSessionCompletionDto)
- field ContinuationPagedResultDtoOfHppSessionCompletionDto.nextContinuationToken: type=string nullable=true
- field ContinuationPagedResultDtoOfHppSessionCompletionDto.pageItemCount: type=integer format=int32 readOnly=true
- field ContinuationPagedResultDtoOfHppSessionCompletionDto.retrievedAt: type=string format=date-time
- field CreateHppSessionInput.maxCompletions: type=integer format=int32 nullable=true
- field CreateHppSessionInput.reusable: type=boolean
- field HppSessionCompletionDto.consumedAt: type=string format=date-time nullable=true
- field HppSessionCompletionDto.consumedByTransactionId: type=string format=uuid nullable=true
- field HppSessionCompletionDto.createdAt: type=string format=date-time
- field HppSessionCompletionDto.declineReleaseCount: type=integer format=int32 nullable=true
- field HppSessionCompletionDto.declineRetryMode: nullable=true allOf(HppDeclineRetryMode)
- field HppSessionCompletionDto.derivedState: allOf(HppSessionDerivedState)
- field HppSessionCompletionDto.expiresAt: type=string format=date-time nullable=true
- field HppSessionCompletionDto.hostedPageId: type=string format=uuid
- field HppSessionCompletionDto.id: type=string format=uuid
- field HppSessionCompletionDto.lastDeclineReleasedAt: type=string format=date-time nullable=true
- field HppSessionCompletionDto.lastDeclinedTransactionId: type=string format=uuid nullable=true
- field HppSessionCompletionDto.merchantId: type=string format=uuid
- field HppSessionCompletionDto.parentSessionId: type=string format=uuid
- field HppSessionCompletionDto.shortToken: type=string nullable=true
- field HppSessionCompletionDto.status: allOf(HppSessionStatus)
- field HppSessionCompletionDto.vaultedPaymentTokenId: type=string format=uuid nullable=true
- field HppSessionDto.completionCount: type=integer format=int32
- field HppSessionDto.maxCompletions: type=integer format=int32 nullable=true
- field HppSessionDto.reusable: type=boolean
- operation GET /api/hostedpaymentpages/sessions/{sessionId}/completions
- parameter GET /api/hostedpaymentpages/sessions/{sessionId}/completions path:sessionId: required type=string format=uuid
- parameter GET /api/hostedpaymentpages/sessions/{sessionId}/completions query:ContinuationToken: optional type=string
- parameter GET /api/hostedpaymentpages/sessions/{sessionId}/completions query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/hostedpaymentpages/sessions/{sessionId}/completions query:IncludeDeleted: optional type=boolean
- parameter GET /api/hostedpaymentpages/sessions/{sessionId}/completions query:IncludeInactive: optional type=boolean
- parameter GET /api/hostedpaymentpages/sessions/{sessionId}/completions query:MaxResultCount: optional type=integer format=int32
- parameter GET /api/hostedpaymentpages/sessions/{sessionId}/completions query:Sorting.Descending: optional type=boolean
- parameter GET /api/hostedpaymentpages/sessions/{sessionId}/completions query:Sorting.Field: optional type=string
- parameter GET /api/hostedpaymentpages/sessions/{sessionId}/completions query:suppressNulls: optional type=boolean
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 200 (application/json): ContinuationPagedResultDtoOfHppSessionCompletionDto
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 200 (text/json): ContinuationPagedResultDtoOfHppSessionCompletionDto
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 200 (text/plain): ContinuationPagedResultDtoOfHppSessionCompletionDto
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 400 (application/json): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 400 (text/json): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 400 (text/plain): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 401 (application/json): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 401 (text/json): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 401 (text/plain): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 403 (application/json): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 403 (text/json): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 403 (text/plain): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 404 (application/json): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 404 (text/json): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 404 (text/plain): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 429: no body
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 500 (application/json): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 500 (text/json): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 500 (text/plain): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 501 (application/json): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 501 (text/json): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions 501 (text/plain): RemoteServiceErrorResponse
- response GET /api/hostedpaymentpages/sessions/{sessionId}/completions default (application/json): RemoteServiceErrorResponse
- schema ContinuationPagedResultDtoOfHppSessionCompletionDto: type=object additionalProperties=false
- schema HppSessionCompletionDto: type=object additionalProperties=false
- operation id hppSessionGetCompletions (GET /api/hostedpaymentpages/sessions/{sessionId}/completions)

### Compatible changes

- Widened schema HppSessionDerivedState: type=string enum=[Cancelled,Consumed,Expired,Revoked,Usable] -> type=string enum=[Cancelled,Completed,Consumed,Expired,Revoked,Usable]
- Widened schema HppSessionStatus: type=string enum=[Cancelled,Consumed,Pending,Revoked] -> type=string enum=[Cancelled,Completed,Consumed,Pending,Revoked]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
