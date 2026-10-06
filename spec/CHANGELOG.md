## 34.1.0

Generated against contract revision 6. Compare it with the revision the instance you call reports at `GET /api/platform/contract`: an instance with a lower revision may not serve every operation in this package. The reference is `docs/api-contract-revision.md`.

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Transactions:PaymentTokenNotOwnedByCustomer: 403
- error code Transactions:PaymentTokenNotOwnedByMerchant: 403

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
