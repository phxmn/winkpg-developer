## 22.9.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field Contract.priceChangedAt: type=string format=date-time nullable=true
- field Contract.trialEndDate: type=string format=date-time nullable=true
- field ContractAggregates.pendingCredit: type=number format=double nullable=true
- field ContractCreateDto.skipPlanTrial: type=boolean
- field ContractCreateDto.trialEndDate: type=string format=date-time nullable=true
- field ContractDto.trialEndDate: type=string format=date-time nullable=true
- field ContractExecutionRecord.chargedAmount: type=number format=double nullable=true
- field ContractExecutionRecord.creditApplied: type=number format=double nullable=true
- field ContractExecutionRecord.preCreditAmount: type=number format=double nullable=true
- field ContractPlanCreateDto.trialDays: type=integer format=int32 nullable=true minimum=0 maximum=365
- field ContractPlanDto.trialDays: type=integer format=int32 nullable=true
- field ContractPlanLookupDto.trialDays: type=integer format=int32 nullable=true
- field ContractPlanUpdateDto.trialDays: type=integer format=int32 nullable=true minimum=0 maximum=365
- field ContractUpdateDto.trialEndDate: type=string format=date-time nullable=true
- field CustomerStoredPaymentMethodDto.isReaderTokenBacked: type=boolean
- field RecurringBillingRunItemDto.chargedAmount: type=number format=double nullable=true
- field RecurringBillingRunItemDto.creditApplied: type=number format=double nullable=true
- field RecurringBillingRunItemDto.preCreditAmount: type=number format=double nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
