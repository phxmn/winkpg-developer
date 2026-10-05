## 33.5.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field ContractRevisionResponse.revision: type=integer format=int32
- operation GET /api/platform/contract
- parameter GET /api/platform/contract query:suppressNulls: optional type=boolean
- response GET /api/platform/contract 200 (application/json): ContractRevisionResponse
- response GET /api/platform/contract 200 (text/json): ContractRevisionResponse
- response GET /api/platform/contract 200 (text/plain): ContractRevisionResponse
- response GET /api/platform/contract 429: no body
- response GET /api/platform/contract default (application/json): RemoteServiceErrorResponse
- schema ContractRevisionResponse: type=object additionalProperties=false
- security GET /api/platform/contract: (none)
- operation id contractRevisionGet (GET /api/platform/contract)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
