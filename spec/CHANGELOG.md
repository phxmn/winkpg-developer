## 18.11.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code HostedPaymentPage:HppSession:Paused: 409
- field CreateHppSessionInput.inactiveMessage: type=string nullable=true maxLength=500
- field HppSessionDto.inactiveMessage: type=string nullable=true
- field HppSessionDto.isPaused: type=boolean
- field HppSessionDto.pausedAt: type=string format=date-time nullable=true
- field PauseHppSessionInput.inactiveMessage: type=string nullable=true maxLength=500
- operation POST /api/hostedpaymentpages/sessions/{sessionId}/pause
- operation POST /api/hostedpaymentpages/sessions/{sessionId}/resume
- parameter POST /api/hostedpaymentpages/sessions/{sessionId}/pause path:sessionId: required type=string format=uuid
- parameter POST /api/hostedpaymentpages/sessions/{sessionId}/pause query:suppressNulls: optional type=boolean
- parameter POST /api/hostedpaymentpages/sessions/{sessionId}/resume path:sessionId: required type=string format=uuid
- parameter POST /api/hostedpaymentpages/sessions/{sessionId}/resume query:suppressNulls: optional type=boolean
- request body POST /api/hostedpaymentpages/sessions/{sessionId}/pause (application/*+json): optional PauseHppSessionInput
- request body POST /api/hostedpaymentpages/sessions/{sessionId}/pause (application/json): optional PauseHppSessionInput
- request body POST /api/hostedpaymentpages/sessions/{sessionId}/pause (text/json): optional PauseHppSessionInput
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 200: no body
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 400 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 400 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 401 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 401 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 403 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 403 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 404 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 404 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 429: no body
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 500 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 500 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 501 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 501 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/pause default (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 200: no body
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 400 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 400 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 401 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 401 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 403 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 403 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 404 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 404 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 429: no body
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 500 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 500 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 501 (application/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 501 (text/json): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/hostedpaymentpages/sessions/{sessionId}/resume default (application/json): RemoteServiceErrorResponse
- schema PauseHppSessionInput: type=object additionalProperties=false
- operation id hppSessionPause (POST /api/hostedpaymentpages/sessions/{sessionId}/pause)
- operation id hppSessionResume (POST /api/hostedpaymentpages/sessions/{sessionId}/resume)

### Compatible changes

- Widened schema HppSessionDerivedState: type=string enum=[Cancelled,Completed,Consumed,Expired,Revoked,Usable] -> type=string enum=[Cancelled,Completed,Consumed,Expired,Paused,Revoked,Usable]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
