## 29.8.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- operation GET /api/invoicing/public/invoice/{invoiceId}/pdf
- parameter GET /api/invoicing/public/invoice/{invoiceId}/pdf path:invoiceId: required type=string format=uuid
- parameter GET /api/invoicing/public/invoice/{invoiceId}/pdf query:suppressNulls: optional type=boolean
- parameter GET /api/invoicing/public/invoice/{invoiceId}/pdf query:token: optional type=string
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 200 (application/json): type=string format=binary
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 200 (text/json): type=string format=binary
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 200 (text/plain): type=string format=binary
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 400: no body
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 401 (application/json): RemoteServiceErrorResponse
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 401 (text/json): RemoteServiceErrorResponse
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 401 (text/plain): RemoteServiceErrorResponse
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 403 (application/json): RemoteServiceErrorResponse
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 403 (text/json): RemoteServiceErrorResponse
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 403 (text/plain): RemoteServiceErrorResponse
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 404: no body
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 429: no body
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 500 (application/json): RemoteServiceErrorResponse
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 500 (text/json): RemoteServiceErrorResponse
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 500 (text/plain): RemoteServiceErrorResponse
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 501 (application/json): RemoteServiceErrorResponse
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 501 (text/json): RemoteServiceErrorResponse
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf 501 (text/plain): RemoteServiceErrorResponse
- response GET /api/invoicing/public/invoice/{invoiceId}/pdf default (application/json): RemoteServiceErrorResponse
- operation id invoicePublicDownloadPdfByViewToken (GET /api/invoicing/public/invoice/{invoiceId}/pdf)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
