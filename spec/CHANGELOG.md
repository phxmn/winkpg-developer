## 27.3.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Invoicing:CustomFieldDefinition:LimitReached: 409
- response POST /api/invoicing/custom-field-definitions 409 (application/json): RemoteServiceErrorResponse
- response POST /api/invoicing/custom-field-definitions 409 (text/json): RemoteServiceErrorResponse
- response POST /api/invoicing/custom-field-definitions 409 (text/plain): RemoteServiceErrorResponse

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
