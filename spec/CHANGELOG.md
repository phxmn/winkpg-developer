## 11.1.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Transactions:CashTenderDeclarationConflictsWithPaymentData: 400
- error code Transactions:CashTenderNotConfiguredForMerchant: 400
- field TransactionCreateDto.tender: TenderKind
- field TransactionDto.tender: TenderKind
- schema TenderKind: type=string enum=[Cash]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
