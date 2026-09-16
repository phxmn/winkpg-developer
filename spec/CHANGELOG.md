## 22.17.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Transactions:TokenRedacted: 409
- field PaymentTokenDto.redactedAt: type=string format=date-time nullable=true
- field PaymentTokenDto.redactionReason: type=string nullable=true
- field RedactPaymentTokenInput.reason: required type=string nullable=true
- operation POST /api/tokens/{id}/redact
- parameter POST /api/tokens/{id}/redact path:id: required type=string format=uuid
- parameter POST /api/tokens/{id}/redact query:suppressNulls: optional type=boolean
- request body POST /api/tokens/{id}/redact (application/*+json): optional RedactPaymentTokenInput
- request body POST /api/tokens/{id}/redact (application/json): optional RedactPaymentTokenInput
- request body POST /api/tokens/{id}/redact (text/json): optional RedactPaymentTokenInput
- response POST /api/tokens/{id}/redact 200 (application/json): PaymentTokenDto
- response POST /api/tokens/{id}/redact 200 (text/json): PaymentTokenDto
- response POST /api/tokens/{id}/redact 200 (text/plain): PaymentTokenDto
- response POST /api/tokens/{id}/redact 400 (application/json): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 400 (text/json): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 401 (application/json): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 401 (text/json): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 403 (application/json): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 403 (text/json): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 404 (application/json): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 404 (text/json): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 429: no body
- response POST /api/tokens/{id}/redact 500 (application/json): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 500 (text/json): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 501 (application/json): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 501 (text/json): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/tokens/{id}/redact default (application/json): RemoteServiceErrorResponse
- schema RedactPaymentTokenInput: type=object additionalProperties=false
- operation id tokensRedact (POST /api/tokens/{id}/redact)

### Compatible changes

- Widened schema TokenStatus: type=string enum=[Active,Inactive,Invalidated] -> type=string enum=[Active,Inactive,Invalidated,Redacted]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
