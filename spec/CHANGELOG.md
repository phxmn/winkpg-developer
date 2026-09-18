## 27.1.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Transactions:StoredCredentialConsentLookupUnavailable
- field ConnectionTestStepDto.detail: type=string nullable=true
- field ConnectionTestStepDto.duration: type=string format=date-span nullable=true
- field ConnectionTestStepDto.name: type=string nullable=true
- field ConnectionTestStepDto.outcome: allOf(ConnectionTestStepOutcome)
- field PaymentEncryptionBindingConnectionTestResultDto.steps: type=array nullable=true items(ConnectionTestStepDto)
- field TaxBindingConnectionTestResultDto.steps: type=array nullable=true items(ConnectionTestStepDto)
- field ThreeDSBindingConnectionTestResultDto.steps: type=array nullable=true items(ConnectionTestStepDto)
- schema ConnectionTestStepDto: type=object additionalProperties=false
- schema ConnectionTestStepOutcome: type=string enum=[Failed,Passed,Skipped,Warning]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
