## 3.1.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Compatible changes

- Widened field CustomerContactDetail.addresses: required type=array nullable=true items(CustomerAddress) -> type=array nullable=true items(CustomerAddress)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
