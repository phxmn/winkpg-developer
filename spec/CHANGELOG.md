## 32.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Removed response POST /api/notifications/events/{id}/replay 429: no body

### Additions

- field UsageBudgetExceededResponse.code: required type=string nullable=true
- field UsageBudgetExceededResponse.error: required type=string nullable=true
- field UsageBudgetExceededResponse.limit: required type=integer format=int64
- field UsageBudgetExceededResponse.message: required type=string nullable=true
- field UsageBudgetExceededResponse.used: required type=integer format=int64
- response POST /api/notifications/events/{id}/replay 429 (application/json): RemoteServiceErrorResponse
- response POST /api/notifications/events/{id}/replay 429 (application/problem+json): RateLimitProblemDetails
- response header POST /api/notifications/events/{id}/replay 429 Retry-After: optional type=integer format=int32
- response header POST /api/notifications/events/{id}/replay 429 X-RateLimit-Limit: optional type=integer format=int32
- response header POST /api/notifications/events/{id}/replay 429 X-RateLimit-Remaining: optional type=integer format=int32
- schema UsageBudgetExceededResponse: type=object additionalProperties=false

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
