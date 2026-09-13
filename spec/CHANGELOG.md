## 22.10.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field CreateHppSessionInput.prefilledListFields: type=object nullable=true values(type=array items(type=string))
- field CustomField.isMultiValue: type=boolean nullable=true
- field CustomField.maxValues: type=integer format=int32 nullable=true
- field HppResolvedCustomFieldDto.isMultiValue: type=boolean
- field HppResolvedCustomFieldDto.maxValues: type=integer format=int32 nullable=true
- field HppSessionCloneDataDto.prefilledListFields: type=object nullable=true values(type=array items(type=string))
- field TrxCustomField.values: type=array nullable=true maxItems=250 items(type=string maxLength=300)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
