## 22.2.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Decryption:InvalidPayload: 400
- error code Decryption:InvalidResult: 409
- error code Decryption:KeyDeactivated: 403
- error code Decryption:ProviderAuthenticationFailed: 409
- error code Decryption:ProviderNotConfigured: 403
- error code Decryption:ProviderRejected: 409
- error code Decryption:Timeout: 429
- error code Decryption:UnknownKeySerialIdentifier: 403
- error code DeviceData:PinVariantNotSupportedForProviderDecryption: 400
- field PayloadDecryption.decryptedAtUtc: type=string format=date-time nullable=true
- field PayloadDecryption.failureCode: type=string nullable=true
- field PayloadDecryption.keyLabel: type=string nullable=true
- field PayloadDecryption.ksi: type=string nullable=true
- field PayloadDecryption.latencyMilliseconds: type=integer format=int64 nullable=true
- field PayloadDecryption.outcome: type=string nullable=true
- field PayloadDecryption.providerName: type=string nullable=true
- field PayloadDecryption.providerResultCode: type=string nullable=true
- field PayloadDecryption.regionUsed: type=string nullable=true
- field PayloadDecryption.retryCount: type=integer format=int32 nullable=true
- field PayloadDecryption.scheme: type=string nullable=true
- field TransactionDto.payloadDecryption: allOf(PayloadDecryption)
- schema PayloadDecryption: type=object additionalProperties=false

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
