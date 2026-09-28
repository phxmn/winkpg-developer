## 31.9.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Compatible changes

- Widened field UpdateSkuEntitlementDto.enabled: type=boolean -> type=boolean nullable=true
- Widened field UpdateSkuEntitlementDto.hardLimitEnabled: type=boolean -> type=boolean nullable=true
- Widened field UpdateSkuEntitlementDto.overageAllowed: type=boolean -> type=boolean nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
