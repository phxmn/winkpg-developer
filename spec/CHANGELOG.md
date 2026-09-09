## 18.20.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field ApmData.cancelUri: type=string nullable=true
- field ApmData.clientParameters: type=object nullable=true values(type=string)
- field ApmData.clientPassthrough: type=object nullable=true values(type=string)
- field ApmData.returnUri: type=string nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
