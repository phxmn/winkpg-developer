## 33.2.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field RevokeAllUserSessionsInput.justification: required type=string nullable=true maxLength=500
- field RevokeAllUserSessionsInput.userId: required type=string format=uuid
- field RevokeSessionsResultDto.revokedCount: type=integer format=int32
- operation POST /api/identity/sessions/revoke-all
- parameter POST /api/identity/sessions/revoke-all query:suppressNulls: optional type=boolean
- request body POST /api/identity/sessions/revoke-all (application/*+json): optional RevokeAllUserSessionsInput
- request body POST /api/identity/sessions/revoke-all (application/json): optional RevokeAllUserSessionsInput
- request body POST /api/identity/sessions/revoke-all (text/json): optional RevokeAllUserSessionsInput
- response POST /api/identity/sessions/revoke-all 200 (application/json): RevokeSessionsResultDto
- response POST /api/identity/sessions/revoke-all 200 (text/json): RevokeSessionsResultDto
- response POST /api/identity/sessions/revoke-all 200 (text/plain): RevokeSessionsResultDto
- response POST /api/identity/sessions/revoke-all 400 (application/json): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 400 (text/json): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 401 (application/json): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 401 (text/json): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 403 (application/json): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 403 (text/json): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 404 (application/json): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 404 (text/json): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 429: no body
- response POST /api/identity/sessions/revoke-all 500 (application/json): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 500 (text/json): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 501 (application/json): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 501 (text/json): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/identity/sessions/revoke-all default (application/json): RemoteServiceErrorResponse
- schema RevokeAllUserSessionsInput: type=object additionalProperties=false
- schema RevokeSessionsResultDto: type=object additionalProperties=false
- operation id sessionsRevokeAllForUser (POST /api/identity/sessions/revoke-all)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
