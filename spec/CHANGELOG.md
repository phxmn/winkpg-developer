## 31.8.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field ContractAggregates.lastBillingSkip: nullable=true readOnly=true allOf(ContractBillingSkip)
- field ContractBillingSkip.category: allOf(RecurringBillingSkipCategory)
- field ContractBillingSkip.reason: type=string nullable=true
- field ContractBillingSkip.scheduledRunTime: type=string format=date-time
- field ContractBillingSkip.skippedAt: type=string format=date-time
- field RecurringBillingRunItemDto.skipCategory: nullable=true allOf(RecurringBillingSkipCategory)
- schema ContractBillingSkip: type=object additionalProperties=false
- schema RecurringBillingSkipCategory: type=string enum=[AlreadyBilled,ConsentLookupUnavailable,InvalidContract,MerchantIneligible,MissingConsent,PlanUnresolved]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
