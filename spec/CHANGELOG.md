## 3.2.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field ProcessorProfileDatawireRegistrationDto.datawireId: type=string nullable=true
- field ProcessorProfileDatawireRegistrationDto.message: type=string nullable=true
- field ProcessorProfileDatawireRegistrationDto.outcome: type=string nullable=true
- field ProcessorProfileDto.datawireRegistration: ProcessorProfileDatawireRegistrationDto
- field ProcessorProfileDto.merchantConcurrencyStamp: type=string nullable=true
- schema ProcessorProfileDatawireRegistrationDto: type=object additionalProperties=false

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
