## 5.5.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Compatible changes

- Widened schema ContractDeactivationReason: type=string enum=[Manual,MaxAmountReached,MaxPaymentsReached,MaxSuccessfulBillsReached,ScheduleExhausted,Suspended] -> type=string enum=[CancelledByCardholder,Manual,MaxAmountReached,MaxPaymentsReached,MaxSuccessfulBillsReached,ScheduleExhausted,Suspended]
- Widened schema TransactionOperationType: type=string enum=[Capture,IncrementalAuthorization,OfflineAdjustment,Refund,Repeat,Retry,Reversal,Void] -> type=string enum=[AcceptPartialApproval,Capture,IncrementalAuthorization,OfflineAdjustment,Refund,Repeat,Retry,Reversal,SplitTender,Void]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
