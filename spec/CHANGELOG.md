## 29.3.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Surcharging:ConfigurationNotFound: 404
- error code Surcharging:RateRequired: 409
- field Contract.convenienceFeeWaived: type=boolean nullable=true
- field ContractDto.convenienceFeeWaived: type=boolean nullable=true readOnly=true
- field UpdateSurchargeConfigurationDtoMergePatch.attestedCostOfAcceptanceRate: type=number format=double nullable=true
- field UpdateSurchargeConfigurationDtoMergePatch.channelRestrictions: nullable=true allOf(SurchargeChannelFlags)
- field UpdateSurchargeConfigurationDtoMergePatch.concurrencyStamp: type=string
- field UpdateSurchargeConfigurationDtoMergePatch.defaultRate: type=number format=double nullable=true
- field UpdateSurchargeConfigurationDtoMergePatch.differentialNetworkRatesAttested: type=boolean nullable=true
- field UpdateSurchargeConfigurationDtoMergePatch.disclosureCopyTemplate: type=string nullable=true maxLength=1000
- field UpdateSurchargeConfigurationDtoMergePatch.merchantId: type=string format=uuid
- field UpdateSurchargeConfigurationDtoMergePatch.networkPolicies: type=array nullable=true items(SurchargeNetworkPolicyDto)
- schema UpdateSurchargeConfigurationDtoMergePatch: type=object additionalProperties=false

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
