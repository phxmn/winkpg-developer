## 22.16.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field CreateHppSessionInput.hostChannel: allOf(HppHostChannel)
- schema HppHostChannel: type=string enum=[NativeWebView,ParentWindow]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
