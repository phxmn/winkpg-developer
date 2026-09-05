## 18.14.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field HppSessionCompletionReconciliationDto.changed: type=boolean
- field HppSessionCompletionReconciliationDto.completionCount: type=integer format=int32
- field HppSessionCompletionReconciliationDto.consumedCompletions: type=integer format=int32
- field HppSessionCompletionReconciliationDto.previousCompletionCount: type=integer format=int32
- field HppSessionCompletionReconciliationDto.previousStatus: allOf(HppSessionStatus)
- field HppSessionCompletionReconciliationDto.remainingCompletions: type=integer format=int32 nullable=true
- field HppSessionCompletionReconciliationDto.sessionId: type=string format=uuid
- field HppSessionCompletionReconciliationDto.status: allOf(HppSessionStatus)
- field HppSessionCompletionReconciliationDto.totalCompletions: type=integer format=int32
- operation POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions
- parameter POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions path:sessionId: required type=string format=uuid
- parameter POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions query:suppressNulls: optional type=boolean
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 200 (application/json): HppSessionCompletionReconciliationDto
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 200 (text/json): HppSessionCompletionReconciliationDto
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 200 (text/plain): HppSessionCompletionReconciliationDto
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 400 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 400 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 401 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 401 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 403 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 403 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 404 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 404 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 429: no body
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 500 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 500 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 501 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 501 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions default (application/json): RemoteServiceErrorResponse
- schema HppSessionCompletionReconciliationDto: type=object additionalProperties=false
- operation id hppSessionReconcileCompletions (POST /api/hostedpaymentpages/sessions/{sessionId}/reconcile-completions)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
