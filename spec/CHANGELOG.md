## 20.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field AmountRangeContributorConfig.actionWhenTriggered: ActionWhenTriggeredType -> allOf(ActionWhenTriggeredType)
- Changed field AmountRangeContributorConfig.settings: AmountRangeSettings -> allOf(AmountRangeSettings)
- Changed field DuplicateTransactionContributorConfig.actionWhenTriggered: ActionWhenTriggeredType -> allOf(ActionWhenTriggeredType)
- Changed field DuplicateTransactionContributorConfig.settings: DuplicateTransactionSettings -> allOf(DuplicateTransactionSettings)
- Changed field FraudContributors.amountRange: AmountRangeContributorConfig -> allOf(AmountRangeContributorConfig)
- Changed field FraudContributors.duplicateTransaction: DuplicateTransactionContributorConfig -> allOf(DuplicateTransactionContributorConfig)
- Changed field FraudContributors.ipBlacklist: IPBlacklistContributorConfig -> allOf(IPBlacklistContributorConfig)
- Changed field FraudContributors.ipCountryRestriction: IPCountryRestrictionContributorConfig -> allOf(IPCountryRestrictionContributorConfig)
- Changed field FraudContributors.ipWhitelist: IPWhitelistContributorConfig -> allOf(IPWhitelistContributorConfig)
- Changed field FraudContributors.velocity: VelocityContributorConfig -> allOf(VelocityContributorConfig)
- Changed field FraudScreeningConfig.contributors: FraudContributors -> allOf(FraudContributors)
- Changed field IPBlacklistContributorConfig.actionWhenTriggered: ActionWhenTriggeredType -> allOf(ActionWhenTriggeredType)
- Changed field IPBlacklistContributorConfig.settings: IPBlacklistSettings -> allOf(IPBlacklistSettings)
- Changed field IPCountryRestrictionContributorConfig.actionWhenTriggered: ActionWhenTriggeredType -> allOf(ActionWhenTriggeredType)
- Changed field IPCountryRestrictionContributorConfig.settings: IPCountryRestrictionSettings -> allOf(IPCountryRestrictionSettings)
- Changed field IPWhitelistContributorConfig.actionWhenTriggered: ActionWhenTriggeredType -> allOf(ActionWhenTriggeredType)
- Changed field IPWhitelistContributorConfig.settings: IPWhitelistSettings -> allOf(IPWhitelistSettings)
- Changed field MerchantFlowConfig.screening: FraudScreeningConfig -> allOf(FraudScreeningConfig)
- Changed field VelocityContributorConfig.actionWhenTriggered: ActionWhenTriggeredType -> allOf(ActionWhenTriggeredType)
- Changed field VelocityContributorConfig.settings: VelocitySettings -> allOf(VelocitySettings)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
