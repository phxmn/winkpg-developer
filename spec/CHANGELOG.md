## 28.7.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field InvoicePaymentLinkInfoDto.amountDue: type=number format=double
- field InvoicePaymentLinkInfoDto.currency: type=string nullable=true
- field InvoicePaymentLinkInfoDto.expiresAt: type=string format=date-time nullable=true
- field InvoicePaymentLinkInfoDto.hasPaymentLink: type=boolean
- field InvoicePaymentLinkInfoDto.hppSessionId: type=string format=uuid nullable=true
- field InvoicePaymentLinkInfoDto.invoiceId: type=string format=uuid
- field InvoicePaymentLinkInfoDto.isExpired: type=boolean
- field InvoicePaymentLinkInfoDto.paymentUrl: type=string nullable=true
- field InvoicePaymentLinkInfoDto.qrCodeUrl: type=string nullable=true
- operation GET /api/invoicing/invoices/{id}/payment-link
- parameter GET /api/invoicing/invoices/{id}/payment-link path:id: required type=string format=uuid
- parameter GET /api/invoicing/invoices/{id}/payment-link query:suppressNulls: optional type=boolean
- response GET /api/invoicing/invoices/{id}/payment-link 200 (application/json): InvoicePaymentLinkInfoDto
- response GET /api/invoicing/invoices/{id}/payment-link 200 (text/json): InvoicePaymentLinkInfoDto
- response GET /api/invoicing/invoices/{id}/payment-link 200 (text/plain): InvoicePaymentLinkInfoDto
- response GET /api/invoicing/invoices/{id}/payment-link 400 (application/json): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 400 (text/json): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 400 (text/plain): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 401 (application/json): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 401 (text/json): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 401 (text/plain): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 403 (application/json): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 403 (text/json): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 403 (text/plain): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 404 (application/json): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 404 (text/json): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 404 (text/plain): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 429: no body
- response GET /api/invoicing/invoices/{id}/payment-link 500 (application/json): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 500 (text/json): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 500 (text/plain): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 501 (application/json): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 501 (text/json): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link 501 (text/plain): RemoteServiceErrorResponse
- response GET /api/invoicing/invoices/{id}/payment-link default (application/json): RemoteServiceErrorResponse
- schema InvoicePaymentLinkInfoDto: type=object additionalProperties=false
- operation id invoiceLifecycleGetPaymentLink (GET /api/invoicing/invoices/{id}/payment-link)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
