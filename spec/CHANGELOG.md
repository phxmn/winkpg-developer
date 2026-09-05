## 18.12.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code PaymentTokenization:GooglePay:AuthMethodNotSupported: 403
- error code PaymentTokenization:GooglePay:DecryptionFailed: 403
- error code PaymentTokenization:GooglePay:GatewayMerchantIdMismatch: 403
- error code PaymentTokenization:GooglePay:PayloadFieldsMissing: 403
- error code PaymentTokenization:GooglePay:PrivateKeyNotConfigured: 403
- error code PaymentTokenization:GooglePay:RootKeysUnavailable: 403
- error code PaymentTokenization:GooglePay:SignatureVerificationFailed: 403
- error code PaymentTokenization:GooglePay:TokenExpired: 403
- error code PaymentTokenization:GooglePay:TokenMalformed: 403
- field WalletProviderRegistrationCreateDto.gatewayMerchantId: type=string nullable=true
- field WalletProviderRegistrationDto.gatewayMerchantId: type=string nullable=true
- field WalletProviderRegistrationUpdateDto.gatewayMerchantId: type=string nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
