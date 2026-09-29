## 31.14.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field CashPolicyDto.allowNonTerminalSources: type=boolean nullable=true
- field CashPolicyDto.cashBackRefundMaxAmount: type=number format=double nullable=true
- field CashPolicyDto.managerApprovalThreshold: type=number format=double nullable=true
- field CashPolicyDto.maxTransactionAmount: type=number format=double nullable=true
- field CashPolicyDto.refundPolicy: nullable=true allOf(CashRefundPolicy)
- field CashPolicyDto.tillTrackingRequired: type=boolean nullable=true
- field GetCampaignContinuationInput.maxModificationTime: type=string format=date-time nullable=true
- field GetCampaignContinuationInput.minModificationTime: type=string format=date-time nullable=true
- field GetContractContinuationInput.maxModificationTime: type=string format=date-time nullable=true
- field GetContractContinuationInput.minModificationTime: type=string format=date-time nullable=true
- field GetContractPlanContinuationInput.maxModificationTime: type=string format=date-time nullable=true
- field GetContractPlanContinuationInput.minModificationTime: type=string format=date-time nullable=true
- field GetCustomerContinuationInput.maxModificationTime: type=string format=date-time nullable=true
- field GetCustomerContinuationInput.minModificationTime: type=string format=date-time nullable=true
- field GetHostedPaymentPageContinuationInput.maxModificationTime: type=string format=date-time nullable=true
- field GetHostedPaymentPageContinuationInput.minModificationTime: type=string format=date-time nullable=true
- field GetPromotionContinuationInput.maxModificationTime: type=string format=date-time nullable=true
- field GetPromotionContinuationInput.minModificationTime: type=string format=date-time nullable=true
- field GetResellerContinuationInput.maxModificationTime: type=string format=date-time nullable=true
- field GetResellerContinuationInput.minModificationTime: type=string format=date-time nullable=true
- field GetTransactionContinuationInput.maxModificationTime: type=string format=date-time nullable=true
- field GetTransactionContinuationInput.minModificationTime: type=string format=date-time nullable=true
- field GetWalletProviderRegistrationContinuationInput.maxModificationTime: type=string format=date-time nullable=true
- field GetWalletProviderRegistrationContinuationInput.minModificationTime: type=string format=date-time nullable=true
- field ProcessingSettingsDto.cashPolicy: allOf(CashPolicyDto)
- parameter GET /api/api-keys/approximate-count query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/api-keys/approximate-count query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/api-keys/continuation-list query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/api-keys/continuation-list query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/campaigns query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/campaigns query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/contracts query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/contracts query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/customers query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/customers query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/hostedpaymentpages query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/hostedpaymentpages query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/identity/users query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/identity/users query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/identity/users/export-as-csv query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/identity/users/export-as-csv query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/identity/users/export-as-excel query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/identity/users/export-as-excel query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/promotions query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/promotions query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/rate-limiting/profiles/continuation query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/rate-limiting/profiles/continuation query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/rate-limiting/profiles/continuation/count query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/rate-limiting/profiles/continuation/count query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/rate-limiting/rules/continuation query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/rate-limiting/rules/continuation query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/rate-limiting/rules/continuation/count query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/rate-limiting/rules/continuation/count query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/resellers query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/resellers query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/shipping/origins query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/shipping/origins query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/shipping/origins/continuation query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/shipping/origins/continuation query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/shipping/origins/continuation/count query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/shipping/origins/continuation/count query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/shipping/parcel-presets query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/shipping/parcel-presets query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/shipping/parcel-presets/continuation query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/shipping/parcel-presets/continuation query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/shipping/parcel-presets/continuation/count query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/shipping/parcel-presets/continuation/count query:MinModificationTime: optional type=string format=date-time
- parameter GET /api/transactions query:MaxModificationTime: optional type=string format=date-time
- parameter GET /api/transactions query:MinModificationTime: optional type=string format=date-time
- schema CashPolicyDto: type=object additionalProperties=false
- schema CashRefundPolicy: type=string enum=[CashBack,ManagerDiscretion,OriginalTenderOnly,StoreCredit]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
