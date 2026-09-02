## 15.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field CustomField.name: required type=string nullable=true maxLength=50 minLength=3 pattern=^[A-Za-z0-9]+$ -> required type=string nullable=true maxLength=50 minLength=3 pattern=^[A-Za-z0-9]+(?:_[A-Za-z0-9]+)*$

### Compatible changes

- Widened field TrxCustomField.value: type=string nullable=true maxLength=25 -> type=string nullable=true maxLength=300

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
