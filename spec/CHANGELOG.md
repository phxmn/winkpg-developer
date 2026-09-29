## 31.11.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field CashPaymentDetails.amountTendered: type=number format=double nullable=true
- field CashPaymentDetails.cashReceivedAt: type=string format=date-time nullable=true
- field CashPaymentDetails.changeGiven: type=number format=double nullable=true
- field TransactionCreateDto.cashData: allOf(CashPaymentDetails)
- field TransactionDto.cashData: allOf(CashPaymentDetails)
- schema CashPaymentDetails: type=object additionalProperties=false
- security GET /.well-known/apple-developer-merchantid-domain-association: (none)
- security GET /.well-known/paze/{environment}/jwks.json: (none)
- security GET /api/accounting/oauth/callback: (none)
- security GET /api/campaigns/{id}/progress: (none)
- security GET /api/hostedpaymentpages/sessions/{sessionId}/qrcode.png: (none)
- security GET /api/identity/users/export-as-csv: (none)
- security GET /api/identity/users/export-as-excel: (none)
- security GET /api/invoicing/public/invoice/{invoiceId}: (none)
- security GET /api/invoicing/public/invoice/{invoiceId}/pdf: (none)
- security GET /api/notifications/unsubscribe: (none)
- security GET /api/payment-tokenization/checkout-snapshot/{providerType}/{merchantId}: (none)
- security GET /sdk/core/manifest.json: (none)
- security GET /sdk/core/{version}/{fingerprint}/{file}: (none)
- security GET /sdk/v1/{product}.js: (none)
- security POST /api/account/login: (none)
- security POST /api/hosted-payment-page/interactions: (none)
- security POST /api/hpp/csp-report: (none)
- security POST /api/notifications/unsubscribe: (none)
- security POST /api/notifications/unsubscribe/confirm: (none)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
