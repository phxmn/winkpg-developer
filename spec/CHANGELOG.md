## 18.26.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Merchants:ResellerRestrictsMerchantToSandbox: 409
- field TransactionHistoryItem.lifecycleOccurredAtUtc: type=string format=date-time nullable=true

### Compatible changes

- Widened schema SettlementStatus: type=string enum=[NotEligible,Pending,ReversalFailed,SettlementFailed,SettlementInProgress,SettlementOnHold,SettlementRolledBack,SettlementSucceeded,WaitingForSettlement] -> type=string enum=[Accepted,NotEligible,Originated,PartiallySettled,Pending,ReversalFailed,SettlementFailed,SettlementInProgress,SettlementOnHold,SettlementRolledBack,SettlementSucceeded,Verifying,WaitingForSettlement]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
