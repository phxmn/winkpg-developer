## 31.13.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Transactions:SplitTenderPlanMaxTendersTooLow: 403
- error code Transactions:SplitTenderPlanNotFirstPayment: 400
- field TransactionCreateDto.requestedSplitTenderTotal: type=number format=double nullable=true
- field TransactionDto.splitTenderDeadlineUtc: type=string format=date-time nullable=true
- field TransactionDto.splitTenderDeclaredTotal: type=number format=double nullable=true

### Compatible changes

- Widened field UpdateSkuEntitlementDto.includedQuantity: type=integer format=int64 minimum=0 -> type=integer format=int64 nullable=true minimum=0

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
