## 29.7.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field InvoicePaymentLinkInfoDto.lastAttemptAt: type=string format=date-time nullable=true
- field InvoicePaymentLinkInfoDto.linkState: allOf(InvoicePaymentLinkState)
- field InvoicePaymentLinkInfoDto.remainingDeclineRetries: type=integer format=int32 nullable=true
- operation POST /api/invoicing/invoices/{id}/payment-link/reissue
- parameter POST /api/invoicing/invoices/{id}/payment-link/reissue path:id: required type=string format=uuid
- parameter POST /api/invoicing/invoices/{id}/payment-link/reissue query:suppressNulls: optional type=boolean
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 200 (application/json): InvoicePaymentLinkInfoDto
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 200 (text/json): InvoicePaymentLinkInfoDto
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 200 (text/plain): InvoicePaymentLinkInfoDto
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 400 (application/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 400 (text/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 401 (application/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 401 (text/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 403 (application/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 403 (text/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 404 (application/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 404 (text/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 409: no body
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 429: no body
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 500 (application/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 500 (text/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 501 (application/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 501 (text/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/{id}/payment-link/reissue default (application/json): RemoteServiceErrorResponse
- schema InvoicePaymentLinkState: type=string enum=[Expired,Live,None,Revoked,Spent]
- operation id invoiceLifecycleReissuePaymentLink (POST /api/invoicing/invoices/{id}/payment-link/reissue)

### Compatible changes

- Widened schema InvoiceActivityType: type=string enum=[AutoChargeAttempted,Cancelled,Closed,Created,CreditApplied,Edited,InstallmentCollected,InstallmentCollectionFailed,NoteAdded,PaymentDeclined,PaymentIndeterminate,PaymentPlanCancelled,PaymentPlanStarted,PaymentReceived,PaymentRetriesExhausted,PaymentRetriesStopped,PaymentRetryScheduled,Refunded,ReminderSent,Sent,StatusChanged,Viewed] -> type=string enum=[AutoChargeAttempted,Cancelled,Closed,Created,CreditApplied,Edited,InstallmentCollected,InstallmentCollectionFailed,NoteAdded,PaymentDeclined,PaymentIndeterminate,PaymentLinkReissued,PaymentPlanCancelled,PaymentPlanStarted,PaymentReceived,PaymentRetriesExhausted,PaymentRetriesStopped,PaymentRetryScheduled,Refunded,ReminderSent,Sent,StatusChanged,Viewed]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
