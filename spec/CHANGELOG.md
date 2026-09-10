## 18.24.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Merchants:CardAcceptancePolicyIssuerCountriesInvalid: 400
- error code Merchants:CardAcceptancePolicyRefusesEverything: 400
- field CardAcceptancePolicyDto.acceptCommercial: type=boolean nullable=true
- field CardAcceptancePolicyDto.acceptConsumer: type=boolean nullable=true
- field CardAcceptancePolicyDto.acceptCredit: type=boolean nullable=true
- field CardAcceptancePolicyDto.acceptDebit: type=boolean nullable=true
- field CardAcceptancePolicyDto.acceptGsa: type=boolean nullable=true
- field CardAcceptancePolicyDto.acceptPrepaid: type=boolean nullable=true
- field CardAcceptancePolicyDto.issuerCountries: type=array nullable=true items(type=string)
- field CardAcceptancePolicyDto.issuerCountryMode: nullable=true allOf(IssuerCountryMode)
- field CardAcceptancePolicyDto.unknownBinPosture: nullable=true allOf(UnknownBinPosture)
- field ProcessingSettingsDto.cardAcceptancePolicy: allOf(CardAcceptancePolicyDto)
- schema CardAcceptancePolicyDto: type=object additionalProperties=false
- schema IssuerCountryMode: type=string enum=[AllowList,Any,DenyList,DomesticOnly]
- schema UnknownBinPosture: type=string enum=[Accept,Decline]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
