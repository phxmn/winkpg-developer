## 18.17.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field ApmData.approvalToken: type=string nullable=true
- field ApmData.approvedAtUtc: type=string format=date-time nullable=true
- field ApmData.fundingSource: type=string nullable=true
- field ApmData.payerReference: type=string nullable=true
- field ApmData.providerAuthorizationId: type=string nullable=true
- field ApmData.providerCaptureId: type=string nullable=true
- field ApmData.providerFeeAmount: type=number format=double nullable=true
- field ApmData.providerKey: type=string nullable=true
- field ApmData.providerOrderId: type=string nullable=true
- field TransactionDto.apmData: allOf(ApmData)
- schema ApmData: type=object additionalProperties=false

### Compatible changes

- Widened schema PaymentMethodsGranular: type=string enum=[Ach,Amex,ApplePay,CUP,Cash,Check,Debit,DigitalWallet,Diners,Discover,Ebt,Generic,GooglePay,JCB,MasterCard,Paze,Visa] -> type=string enum=[Ach,AlternativePayment,Amex,ApplePay,CUP,Cash,Check,Debit,DigitalWallet,Diners,Discover,Ebt,Generic,GooglePay,JCB,MasterCard,Paze,Visa]
- Widened schema TokenPaymentMethodType: type=string enum=[Card,Check,DigitalWallet,Unknown] -> type=string enum=[AlternativePayment,Card,Check,DigitalWallet,Unknown]
- Widened schema TokenType: type=string enum=[Card,Cash,Check,DigitalWallet] -> type=string enum=[AlternativePayment,Card,Cash,Check,DigitalWallet]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
