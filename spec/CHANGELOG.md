## 18.15.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Transactions:EnhancedDataRequirementsNotMet: 400
- field EnhancedDataQualificationDto.isPreview: type=boolean nullable=true
- field ProcessingSettingsDto.enhancedDataEnforcement: nullable=true allOf(EnhancedDataEnforcementMode)
- schema EnhancedDataEnforcementMode: type=string enum=[Off,Strict,Warn]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
