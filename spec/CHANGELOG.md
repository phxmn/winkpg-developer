## 7.17.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code USAGE_BUDGET_EXCEEDED: 429
- field MerchantDto.planCode: type=string nullable=true

### Compatible changes

- Widened schema EntitlementScope: type=string enum=[Merchant,Platform,Reseller] -> type=string enum=[Merchant,Plan,Platform,Reseller]
- Widened schema ResetPeriod: type=string enum=[Annual,Monthly,None,Quarterly] -> type=string enum=[Annual,Daily,Monthly,None,Quarterly]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
