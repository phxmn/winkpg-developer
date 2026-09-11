## 20.4.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Resellers:CardAcceptanceDefaultIssuerCountriesInvalid: 400
- error code Resellers:CardAcceptanceDefaultRefusesEverything: 400
- field CardAcceptancePolicy.acceptCommercial: type=boolean nullable=true
- field CardAcceptancePolicy.acceptConsumer: type=boolean nullable=true
- field CardAcceptancePolicy.acceptCredit: type=boolean nullable=true
- field CardAcceptancePolicy.acceptDebit: type=boolean nullable=true
- field CardAcceptancePolicy.acceptGsa: type=boolean nullable=true
- field CardAcceptancePolicy.acceptPrepaid: type=boolean nullable=true
- field CardAcceptancePolicy.issuerCountries: type=array nullable=true items(type=string)
- field CardAcceptancePolicy.issuerCountryMode: nullable=true allOf(IssuerCountryMode)
- field CardAcceptancePolicy.unknownBinPosture: nullable=true allOf(UnknownBinPosture)
- field ResellerProcessingDefaults.cardAcceptancePolicy: allOf(CardAcceptancePolicy)
- schema CardAcceptancePolicy: type=object additionalProperties=false

### Compatible changes

- Widened schema SandboxAchTargetStatus: type=string enum=[NotEligible,SettlementFailed,SettlementRolledBack,SettlementSucceeded] -> type=string enum=[Accepted,NotEligible,Originated,PartiallySettled,SettlementFailed,SettlementRolledBack,SettlementSucceeded,Verifying]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
