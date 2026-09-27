## 31.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field CreateStandaloneTokenRequestDto.paymentDetails: PaymentDetailSnapshot -> allOf(PaymentDetailSnapshot)
- Changed field PaymentDetailSnapshot.cardData: CardData -> allOf(CardData)
- Changed field PaymentDetailSnapshot.checkData: CheckData -> allOf(CheckData)
- Changed field PaymentDetailSnapshot.tokenData: TokenData -> allOf(TokenData)

### Additions

- error code CardData:FullCardNumberNotAllowedOnStoredSnapshot: 400

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
