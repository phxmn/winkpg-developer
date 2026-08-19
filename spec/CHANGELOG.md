## 7.13.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field GetContractContinuationInput.includeApproxTotalCount: type=boolean nullable=true
- field GetCustomerContinuationInput.includeApproxTotalCount: type=boolean nullable=true
- field GetDeveloperAccountContinuationInput.includeApproxTotalCount: type=boolean nullable=true
- field GetDeveloperPortalInvitationContinuationInput.includeApproxTotalCount: type=boolean nullable=true
- field GetHostedPaymentPageContinuationInput.includeApproxTotalCount: type=boolean nullable=true
- field GetMerchantsContinuationInput.includeApproxTotalCount: type=boolean nullable=true
- field GetNotificationChannelContinuationInput.includeApproxTotalCount: type=boolean nullable=true
- field GetNotificationDestinationContinuationInput.includeApproxTotalCount: type=boolean nullable=true
- field GetNotificationSubscriptionContinuationInput.includeApproxTotalCount: type=boolean nullable=true
- field GetPaymentTokensContinuationInput.includeApproxTotalCount: type=boolean nullable=true
- field GetResellerContinuationInput.includeApproxTotalCount: type=boolean nullable=true
- field GetTransactionContinuationInput.includeApproxTotalCount: type=boolean nullable=true
- field GetWalletProviderRegistrationContinuationInput.includeApproxTotalCount: type=boolean nullable=true
- parameter GET /api/api-keys/approximate-count query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/api-keys/continuation-list query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/app/audit-log-continuation/approximate-total-count query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/app/audit-log-continuation/continuation-list query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/app/my-security-log/approximate-total-count query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/app/my-security-log/continuation-list query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/app/my-session/approximate-total-count query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/app/my-session/continuation-list query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/billing-runs query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/billing-runs/merchant-history query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/customers/recurring-billing/contracts/{contractId}/history query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/customers/recurring-billing/customers/{customerId}/history query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/customers/recurring-billing/history query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/hostedpaymentpages/sessions query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/identity/users/approximate-count query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/identity/users/continuation-list query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/invoicing/invoices query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/merchants/{id}/billing/payment-method/history query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/rate-limiting/profiles/continuation query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/rate-limiting/profiles/continuation/count query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/rate-limiting/rules/continuation query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/rate-limiting/rules/continuation/count query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/security-posture/sbom/builds query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/tokens query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/twilio/email-log query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/twilio/inbound-messages query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/twilio/sms-consent query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/twilio/sms-log query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/usage/entitlements query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/usage/reports/dimensional-summary query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/usage/reports/ledger/export query:IncludeApproxTotalCount: optional type=boolean
- parameter GET /api/usage/reports/merchant-ledger query:IncludeApproxTotalCount: optional type=boolean

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
