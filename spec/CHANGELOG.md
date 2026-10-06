## 34.0.0

Generated against contract revision 5. Compare it with the revision the instance you call reports at `GET /api/platform/contract`: an instance with a lower revision may not serve every operation in this package. The reference is `docs/api-contract-revision.md`.

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Removed field LinkUserLoginInfo.linkTenantId: type=string format=uuid nullable=true
- Removed field LinkUserLoginInfo.linkUserId: required type=string format=uuid
- Removed operation GET /api/account/logout
- Removed operation POST /api/account/checkPassword
- Removed operation POST /api/account/linkLogin
- Removed parameter GET /api/account/logout query:suppressNulls: optional type=boolean
- Removed parameter POST /api/account/checkPassword query:suppressNulls: optional type=boolean
- Removed parameter POST /api/account/linkLogin query:suppressNulls: optional type=boolean
- Removed request body POST /api/account/checkPassword (application/*+json): optional UserLoginInfo
- Removed request body POST /api/account/checkPassword (application/json): optional UserLoginInfo
- Removed request body POST /api/account/checkPassword (text/json): optional UserLoginInfo
- Removed request body POST /api/account/linkLogin (application/*+json): optional LinkUserLoginInfo
- Removed request body POST /api/account/linkLogin (application/json): optional LinkUserLoginInfo
- Removed request body POST /api/account/linkLogin (text/json): optional LinkUserLoginInfo
- Removed response GET /api/account/logout 204: no body
- Removed response GET /api/account/logout 400 (application/json): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 400 (text/json): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 400 (text/plain): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 401 (application/json): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 401 (text/json): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 401 (text/plain): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 403 (application/json): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 403 (text/json): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 403 (text/plain): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 404 (application/json): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 404 (text/json): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 404 (text/plain): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 429: no body
- Removed response GET /api/account/logout 500 (application/json): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 500 (text/json): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 500 (text/plain): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 501 (application/json): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 501 (text/json): RemoteServiceErrorResponse
- Removed response GET /api/account/logout 501 (text/plain): RemoteServiceErrorResponse
- Removed response GET /api/account/logout default (application/json): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 200 (application/json): AbpLoginResult
- Removed response POST /api/account/checkPassword 200 (text/json): AbpLoginResult
- Removed response POST /api/account/checkPassword 200 (text/plain): AbpLoginResult
- Removed response POST /api/account/checkPassword 400 (application/json): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 400 (text/json): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 400 (text/plain): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 401 (application/json): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 401 (text/json): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 401 (text/plain): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 403 (application/json): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 403 (text/json): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 403 (text/plain): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 404 (application/json): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 404 (text/json): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 404 (text/plain): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 429: no body
- Removed response POST /api/account/checkPassword 500 (application/json): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 500 (text/json): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 500 (text/plain): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 501 (application/json): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 501 (text/json): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword 501 (text/plain): RemoteServiceErrorResponse
- Removed response POST /api/account/checkPassword default (application/json): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 200 (application/json): AbpLoginResult
- Removed response POST /api/account/linkLogin 200 (text/json): AbpLoginResult
- Removed response POST /api/account/linkLogin 200 (text/plain): AbpLoginResult
- Removed response POST /api/account/linkLogin 400 (application/json): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 400 (text/json): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 400 (text/plain): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 401 (application/json): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 401 (text/json): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 401 (text/plain): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 403 (application/json): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 403 (text/json): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 403 (text/plain): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 404 (application/json): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 404 (text/json): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 404 (text/plain): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 429: no body
- Removed response POST /api/account/linkLogin 500 (application/json): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 500 (text/json): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 500 (text/plain): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 501 (application/json): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 501 (text/json): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin 501 (text/plain): RemoteServiceErrorResponse
- Removed response POST /api/account/linkLogin default (application/json): RemoteServiceErrorResponse
- Removed schema LinkUserLoginInfo: type=object additionalProperties=false
- Removed operation id loginCheckPassword (POST /api/account/checkPassword). The generated method of that name is gone from every package in this release.
- Removed operation id loginLinkLogin (POST /api/account/linkLogin). The generated method of that name is gone from every package in this release.
- Removed operation id loginLogout (GET /api/account/logout). The generated method of that name is gone from every package in this release.

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
