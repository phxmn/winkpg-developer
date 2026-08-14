## 4.1.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field PaymentechCertificationOverrides.$processor: required type=string enum=[paymentech]
- field PaymentechCertificationOverrides.ecommerceIndicatorOverride: type=string nullable=true
- field PaymentechCertificationOverrides.forcePartialAuthorization: type=boolean
- field PaymentechCertificationOverrides.forceStoredCredential: type=boolean
- field PaymentechCertificationOverrides.sequenceNumberOverride: type=integer format=int32 nullable=true
- field PaymentechCertificationOverrides.settlementBatchNumberOverride: type=integer format=int32 nullable=true
- schema PaymentechCertificationOverrides: type=object additionalProperties=false allOf(ProcessorCertificationOverrides)

### Compatible changes

- Widened field ProcessorCertificationOverrides.$processor: required type=string enum=[fiserv,tsys] -> required type=string enum=[fiserv,paymentech,tsys]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
