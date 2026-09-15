## 22.14.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field ClientDeviceSnapshot.acceptLanguage: type=string nullable=true maxLength=64
- field ClientDeviceSnapshot.userAgent: type=string nullable=true maxLength=512
- field TransactionSourceData.clientDevice: allOf(ClientDeviceSnapshot)
- field TransactionSourceData.screeningDeviceSignals: type=object nullable=true values(type=string)
- schema ClientDeviceSnapshot: type=object additionalProperties=false

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
