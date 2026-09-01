## 13.1.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Customers:InvalidParentMerchant: 403
- error code Customers:ParentMerchantCannotChange: 403
- error code HostedPaymentPage:LockedFieldChange: 403
- error code Merchants:PricePlanAssignmentBlockedForCollectionMerchant: 403
- error code Merchants:PricePlanAssignmentInvalidPlan: 403
- error code Merchants:RecurringOverrideRequiresActivePaymentMethod: 403
- error code Merchants:RecurringOverrideRequiresCollectionMerchant: 403
- error code PaymentechIncrementalAuthorization.BrandNotSupported: 403
- error code PaymentechIncrementalAuthorization.InvalidAmount: 403
- error code PaymentechIncrementalAuthorization.MissingAuthCode: 403
- error code PaymentechIncrementalAuthorization.MissingFields: 403
- error code PaymentechIncrementalAuthorization.NotAuthorized: 403
- error code PaymentechReversal.PartialReleaseUnavailable: 403
- error code PhoeniXGateV2:UserNameChangeNotSupportedOnSelfServiceProfile: 403
- error code Resellers:CaptureHppPageRejected: 403
- error code Resellers:CollectionMerchantRejected: 403
- error code Resellers:DefaultTaxRateRejected: 403
- error code Resellers:InvoiceTemplateRejected: 403
- error code Resellers:ResellerParentCheckUnavailable: 403
- error code Resellers:ResellerParentCreatesCycle: 403
- error code Resellers:ResellerParentNotPermitted: 403
- error code Resellers:SubResellerCreationDisabled: 403
- error code Resellers:TopLevelResellerRequiresAdmin: 403
- error code Transactions:BatchSequenceMerchantNotFound: 403
- error code Transactions:BatchSequenceNumberOutOfRange: 403
- error code Transactions:BatchSequenceProcessorNotFound: 403
- error code Transactions:SettlementAlreadyInProgress: 403
- error code WinkPG.Invoicing:PaymentLinkBaseUrlNotConfigured: 403
- error code WinkPG.Invoicing:PaymentLinkNotAvailable: 403
- field CustomField.legacyNumber: type=integer format=int64 nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
