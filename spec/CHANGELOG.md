## 22.13.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field ContractExecutionRecord.planId: type=string format=uuid nullable=true
- field ContractExecutionRecord.planPriceId: type=string format=uuid nullable=true
- field ContractPlanLookupDto.defaultSchedule: allOf(ContractSchedule)
- field RecurringBillingRunItemDto.planPriceEffectiveFrom: type=string format=date-time nullable=true
- field RecurringBillingRunItemDto.planPriceId: type=string format=uuid nullable=true
- field RecurringBillingRunItemDto.planPriceTotalAmount: type=number format=double nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
