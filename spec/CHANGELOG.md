## 20.7.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code HostedPaymentPage:HppSession:CatalogUnavailable: 409
- error code HostedPaymentPage:HppSession:ProductSelectionInvalid: 400
- error code HostedPaymentPage:PageProductCurrencyMismatch: 400
- error code HostedPaymentPage:PageProductNotFound: 400
- error code HostedPaymentPage:PageProductQuantityInvalid: 400
- error code ThreeDSecureAuthenticationRequired: 400
- field CreateHppSessionInput.products: type=array nullable=true maxItems=50 items(HppSessionProductInput)
- field HostedPaymentPageCreateDto.products: type=array nullable=true maxItems=50 items(HppPageProduct)
- field HostedPaymentPageDto.products: type=array nullable=true items(HppPageProduct)
- field HostedPaymentPageUpdateDto.products: type=array nullable=true maxItems=50 items(HppPageProduct)
- field HppCatalogOrder.currency: type=string nullable=true
- field HppCatalogOrder.lines: type=array nullable=true items(HppCatalogOrderLine)
- field HppCatalogOrder.subtotalAmount: type=number format=double nullable=true
- field HppCatalogOrderLine.allowFractionalQuantity: type=boolean
- field HppCatalogOrderLine.allowQuantityChange: type=boolean
- field HppCatalogOrderLine.defaultQuantity: type=number format=double
- field HppCatalogOrderLine.description: type=string nullable=true
- field HppCatalogOrderLine.discountAmount: type=number format=double nullable=true
- field HppCatalogOrderLine.displayOrder: type=integer format=int32
- field HppCatalogOrderLine.isOptional: type=boolean
- field HppCatalogOrderLine.isTaxable: type=boolean
- field HppCatalogOrderLine.lineTotal: type=number format=double nullable=true
- field HppCatalogOrderLine.maximumQuantity: type=number format=double
- field HppCatalogOrderLine.minimumQuantity: type=number format=double
- field HppCatalogOrderLine.name: type=string nullable=true
- field HppCatalogOrderLine.productCode: type=string nullable=true
- field HppCatalogOrderLine.productId: type=string format=uuid
- field HppCatalogOrderLine.quantity: type=number format=double
- field HppCatalogOrderLine.taxAmount: type=number format=double nullable=true
- field HppCatalogOrderLine.taxCode: type=string nullable=true
- field HppCatalogOrderLine.unitOfMeasure: type=string nullable=true
- field HppCatalogOrderLine.unitPrice: type=number format=double
- field HppPageProduct.allowQuantityChange: type=boolean
- field HppPageProduct.defaultQuantity: type=number format=double minimum=0 maximum=9999 exclusiveMinimum=true
- field HppPageProduct.displayOrder: type=integer format=int32 minimum=0
- field HppPageProduct.isOptional: type=boolean
- field HppPageProduct.maximumQuantity: type=number format=double nullable=true
- field HppPageProduct.minimumQuantity: type=number format=double nullable=true
- field HppPageProduct.productId: required type=string format=uuid
- field HppSessionCompletionDto.consumedOrder: allOf(HppCatalogOrder)
- field HppSessionDto.catalogOrder: allOf(HppCatalogOrder)
- field HppSessionDto.consumedOrder: allOf(HppCatalogOrder)
- field HppSessionProductInput.productId: required type=string format=uuid
- field HppSessionProductInput.quantity: type=number format=double minimum=0 maximum=9999
- field TransactionDto.orderLines: type=array nullable=true items(TransactionOrderLine)
- field TransactionOrderLine.discountAmount: type=number format=double nullable=true
- field TransactionOrderLine.lineTotal: type=number format=double
- field TransactionOrderLine.name: type=string nullable=true
- field TransactionOrderLine.productCode: type=string nullable=true
- field TransactionOrderLine.productId: type=string format=uuid
- field TransactionOrderLine.quantity: type=number format=double
- field TransactionOrderLine.taxAmount: type=number format=double nullable=true
- field TransactionOrderLine.unitOfMeasure: type=string nullable=true
- field TransactionOrderLine.unitPrice: type=number format=double
- schema HppCatalogOrder: type=object additionalProperties=false
- schema HppCatalogOrderLine: type=object additionalProperties=false
- schema HppPageProduct: type=object additionalProperties=false
- schema HppSessionProductInput: type=object additionalProperties=false
- schema TransactionOrderLine: type=object additionalProperties=false

### Compatible changes

- Widened schema ResultCode: type=string enum=[AccountNumberTruncated,CannotExceedSalesCap,CaptureError,CardNotAcceptedByMerchantPolicy,CheckDlVerificationRequiresDlState,ClientTimeoutWaitingForResponse,CreditError,CustomerReferenceNumberNotFound,Decline,DuplicateBatchProcessed,DuplicateSuppressionTimeout,DuplicateTransaction,ErrorCheckingDuplicate,ErrorFinishingTransaction,ErrorReadingResponseFromHost,ErrorStartingTransaction,FailedAvsCheck,FieldFormatError,FraudControlAudit,FraudControlAuthAndHold,FraudControlDecline,FraudControlNoAuthAndHold,GeneralError,GenericHostError,HostNotAvailable,IndeterminateBatchState,InsufficientFundsAvailable,InsufficientPrivilege,InvalidAbaNumber,InvalidAccountNumber,InvalidAmount,InvalidCheckHolderName,InvalidCheckNumber,InvalidCompliance,InvalidExpirationDate,InvalidIndustry,InvalidIssuer,InvalidLogin,InvalidLoginBlocked,InvalidLoginDeactivated,InvalidMerchantInfo,InvalidParameterStream,InvalidPoNumber,InvalidReceiptInformation,InvalidReferenceNumber,InvalidRegisterInfo,InvalidRequestMsg,InvalidTransaction,InvalidTransactionType,InvalidVNumber,InvalidVersion,MustSettleAllPaymentTypes,NetworkNotFound,NoRecordsToProcess,NoRecordsToSettle,NotATransactionServer,Ok,OriginalTransactionIdNotFound,Partial,PaymentTypeNotSupported,PaymentTypesDoNotMatch,Pend,PinDebitNotSupportedOnCreditBin,PolicyRejected,ProcessorNotAvailable,ProcessorNotConfigured,Referral,RegisterAlreadyAuthenticated,RegisterAuthenticationFailed,RegisterNotAuthenticated,Reject,ReversalError,Submit,TimeoutValueTooSmall,TimeoutWaitingForHostResponse,TimeoutWaitingForProcessorResponse,TooManyLineItems,TransactionTypeNotAllowed,TransactionTypeNotSupportedByHost,TransactionTypeNotSupportedInThisVersion,Undefined,UnsupportedProcessor,UserAuthenticationFailed,VoidError] -> type=string enum=[AccountNumberTruncated,CannotExceedSalesCap,CaptureError,CardNotAcceptedByMerchantPolicy,CheckDlVerificationRequiresDlState,ClientTimeoutWaitingForResponse,CreditError,CustomerReferenceNumberNotFound,Decline,DuplicateBatchProcessed,DuplicateSuppressionTimeout,DuplicateTransaction,ErrorCheckingDuplicate,ErrorFinishingTransaction,ErrorReadingResponseFromHost,ErrorStartingTransaction,FailedAvsCheck,FieldFormatError,FraudControlAudit,FraudControlAuthAndHold,FraudControlDecline,FraudControlNoAuthAndHold,GeneralError,GenericHostError,HostNotAvailable,IndeterminateBatchState,InsufficientFundsAvailable,InsufficientPrivilege,InvalidAbaNumber,InvalidAccountNumber,InvalidAmount,InvalidCheckHolderName,InvalidCheckNumber,InvalidCompliance,InvalidExpirationDate,InvalidIndustry,InvalidIssuer,InvalidLogin,InvalidLoginBlocked,InvalidLoginDeactivated,InvalidMerchantInfo,InvalidParameterStream,InvalidPoNumber,InvalidReceiptInformation,InvalidReferenceNumber,InvalidRegisterInfo,InvalidRequestMsg,InvalidTransaction,InvalidTransactionType,InvalidVNumber,InvalidVersion,MustSettleAllPaymentTypes,NetworkNotFound,NoRecordsToProcess,NoRecordsToSettle,NotATransactionServer,Ok,OriginalTransactionIdNotFound,Partial,PaymentTypeNotSupported,PaymentTypesDoNotMatch,Pend,PinDebitNotSupportedOnCreditBin,PolicyRejected,ProcessorNotAvailable,ProcessorNotConfigured,Referral,RegisterAlreadyAuthenticated,RegisterAuthenticationFailed,RegisterNotAuthenticated,Reject,ReversalError,Submit,ThreeDSecureAuthenticationRequired,TimeoutValueTooSmall,TimeoutWaitingForHostResponse,TimeoutWaitingForProcessorResponse,TooManyLineItems,TransactionTypeNotAllowed,TransactionTypeNotSupportedByHost,TransactionTypeNotSupportedInThisVersion,Undefined,UnsupportedProcessor,UserAuthenticationFailed,VoidError]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
