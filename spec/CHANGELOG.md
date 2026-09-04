## 18.6.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field MerchantRegister.legacyNumber: type=integer format=int64 nullable=true
- field MerchantRegisterDto.legacyNumber: type=integer format=int64 nullable=true
- field MerchantRegisterLegacyMatchDto.merchantId: type=string format=uuid
- field MerchantRegisterLegacyMatchDto.register: allOf(MerchantRegisterDto)
- field MerchantRegisterWriteResultDto.created: type=boolean
- field MerchantRegisterWriteResultDto.merchantConcurrencyStamp: type=string nullable=true
- field MerchantRegisterWriteResultDto.merchantId: type=string format=uuid
- field MerchantRegisterWriteResultDto.register: allOf(MerchantRegisterDto)
- operation GET /api/merchants/registers/by-legacy-number/{legacyNumber}
- operation POST /api/merchants/{id}/registers
- parameter GET /api/merchants/registers/by-legacy-number/{legacyNumber} path:legacyNumber: required type=integer format=int64
- parameter GET /api/merchants/registers/by-legacy-number/{legacyNumber} query:suppressNulls: optional type=boolean
- parameter POST /api/merchants/{id}/registers header:If-Match: optional type=string
- parameter POST /api/merchants/{id}/registers path:id: required type=string format=uuid
- parameter POST /api/merchants/{id}/registers query:suppressNulls: optional type=boolean
- request body POST /api/merchants/{id}/registers (application/*+json): optional MerchantRegisterDto
- request body POST /api/merchants/{id}/registers (application/json): optional MerchantRegisterDto
- request body POST /api/merchants/{id}/registers (text/json): optional MerchantRegisterDto
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 200 (application/json): MerchantRegisterLegacyMatchDto
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 200 (text/json): MerchantRegisterLegacyMatchDto
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 200 (text/plain): MerchantRegisterLegacyMatchDto
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 400 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 400 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 400 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 401 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 401 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 401 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 403 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 403 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 403 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 404 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 404 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 404 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 429: no body
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 500 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 500 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 500 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 501 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 501 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} 501 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/registers/by-legacy-number/{legacyNumber} default (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 200 (application/json): MerchantRegisterWriteResultDto
- response POST /api/merchants/{id}/registers 200 (text/json): MerchantRegisterWriteResultDto
- response POST /api/merchants/{id}/registers 200 (text/plain): MerchantRegisterWriteResultDto
- response POST /api/merchants/{id}/registers 400 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 400 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 401 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 401 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 403 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 403 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 404 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 404 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 429: no body
- response POST /api/merchants/{id}/registers 500 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 500 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 501 (application/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 501 (text/json): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/merchants/{id}/registers default (application/json): RemoteServiceErrorResponse
- schema MerchantRegisterLegacyMatchDto: type=object additionalProperties=false
- schema MerchantRegisterWriteResultDto: type=object additionalProperties=false
- operation id registersFindRegisterByLegacyNumber (GET /api/merchants/registers/by-legacy-number/{legacyNumber})
- operation id registersSaveRegister (POST /api/merchants/{id}/registers)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
