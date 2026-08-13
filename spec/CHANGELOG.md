## 3.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field CustomerCreateDto.merchantAssignedId: type=string nullable=true -> type=string nullable=true maxLength=50
- Changed field CustomerCreateDto.name: type=string nullable=true -> required type=string nullable=true maxLength=100 minLength=2
- Changed field CustomerUpdateDto.merchantAssignedId: type=string nullable=true -> type=string nullable=true maxLength=50
- Changed field CustomerUpdateDto.name: type=string nullable=true -> required type=string nullable=true maxLength=100 minLength=2

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
