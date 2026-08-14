## 4.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed parameter DELETE /api/favorites/user query:EntityType: optional type=string -> required type=string
- Changed parameter GET /api/billing-runs/merchant-history query:MerchantId: optional type=string format=uuid -> required type=string format=uuid
- Changed parameter GET /api/hostedpaymentpages/sessions query:HostedPageId: optional type=string format=uuid -> required type=string format=uuid
- Changed parameter GET /api/merchants/{id}/billing/payment-method/history query:MerchantId: optional type=string format=uuid -> required type=string format=uuid
- Changed parameter GET /api/notifications/events query:FromUtc: optional type=string format=date-time -> required type=string format=date-time
- Changed parameter GET /api/notifications/events query:ToUtc: optional type=string format=date-time -> required type=string format=date-time
- Changed parameter GET /api/twilio/sms-consent/check query:PhoneNumber: optional type=string -> required type=string
- Changed parameter GET /api/usage/reports/dimensional-summary query:DimensionKey: optional type=string -> required type=string
- Changed parameter GET /api/usage/reports/dimensional-summary query:ResellerId: optional type=string format=uuid -> required type=string format=uuid
- Changed parameter GET /api/usage/reports/dimensional-summary query:SkuCode: optional type=string -> required type=string
- Changed parameter GET /api/usage/reports/ledger/export query:MerchantId: optional type=string format=uuid -> required type=string format=uuid
- Changed parameter GET /api/usage/reports/ledger/export query:ResellerId: optional type=string format=uuid -> required type=string format=uuid
- Changed parameter GET /api/usage/reports/merchant-ledger query:MerchantId: optional type=string format=uuid -> required type=string format=uuid
- Changed parameter GET /api/usage/reports/merchant-ledger query:ResellerId: optional type=string format=uuid -> required type=string format=uuid
- Changed parameter GET /api/usage/reports/merchant-summary query:MerchantId: optional type=string format=uuid -> required type=string format=uuid
- Changed parameter GET /api/usage/reports/merchant-summary query:ResellerId: optional type=string format=uuid -> required type=string format=uuid
- Changed parameter GET /api/usage/reports/summary/export query:MerchantId: optional type=string format=uuid -> required type=string format=uuid
- Changed parameter GET /api/usage/reports/summary/export query:ResellerId: optional type=string format=uuid -> required type=string format=uuid

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
