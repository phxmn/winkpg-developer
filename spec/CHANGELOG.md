## 20.3.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Invoicing:LineItem:CustomPriceNotAllowed: 400
- error code Invoicing:LineItem:FractionalQuantityNotAllowed: 400
- error code Invoicing:LineItem:ProductUnavailable: 400
- error code Invoicing:LineItem:QuantityAboveMaximum: 400
- error code Invoicing:LineItem:QuantityBelowMinimum: 400
- field ThreeDSAuthenticationData.aav: type=string nullable=true
- field ThreeDSAuthenticationData.acsTransactionId: type=string nullable=true
- field ThreeDSAuthenticationData.authenticatedAtUtc: type=string format=date-time nullable=true
- field ThreeDSAuthenticationData.authenticationType: nullable=true allOf(ThreeDSAuthenticationType)
- field ThreeDSAuthenticationData.cavv: type=string nullable=true
- field ThreeDSAuthenticationData.cavvAlgorithm: type=string nullable=true
- field ThreeDSAuthenticationData.cavvResultCode: type=string nullable=true
- field ThreeDSAuthenticationData.challengeCompleted: type=boolean nullable=true
- field ThreeDSAuthenticationData.challengeRequired: type=boolean nullable=true
- field ThreeDSAuthenticationData.dsTransactionId: type=string nullable=true
- field ThreeDSAuthenticationData.eci: type=string nullable=true
- field ThreeDSAuthenticationData.liabilityShifted: type=boolean nullable=true
- field ThreeDSAuthenticationData.messageCategory: nullable=true allOf(ThreeDSMessageCategory)
- field ThreeDSAuthenticationData.providerType: nullable=true allOf(ThreeDSProviderType)
- field ThreeDSAuthenticationData.threeDSServerTransactionId: type=string nullable=true
- field ThreeDSAuthenticationData.threeDSVersion: type=string nullable=true
- field ThreeDSAuthenticationData.transactionStatus: nullable=true allOf(ThreeDSTransactionStatus)
- field ThreeDSAuthenticationData.transactionStatusReason: type=string nullable=true
- field TransactionDto.threeDSAuthentication: allOf(ThreeDSAuthenticationData)
- schema ThreeDSAuthenticationData: type=object additionalProperties=false
- schema ThreeDSAuthenticationType: type=string enum=[Attempt,Challenge,Frictionless,RequestorInitiated]
- schema ThreeDSMessageCategory: type=string enum=[NonPayment,Payment]
- schema ThreeDSTransactionStatus: type=string enum=[AttemptsProcessed,Authenticated,ChallengeRequired,DecoupledChallengeRequired,InformationalOnly,NotAuthenticated,Rejected,Unavailable,Unknown]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
