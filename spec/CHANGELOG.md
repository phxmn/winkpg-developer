## 18.10.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field EnhancedDataQualificationDto.attemptedLevel: nullable=true allOf(CedpQualificationLevel)
- field EnhancedDataQualificationDto.emittedLevel: nullable=true allOf(CedpQualificationLevel)
- field EnhancedDataQualificationDto.evaluatedAt: type=string format=date-time nullable=true
- field EnhancedDataQualificationDto.evaluatorVersion: type=integer format=int32 nullable=true
- field EnhancedDataQualificationDto.findingCount: type=integer format=int32 nullable=true
- field EnhancedDataQualificationDto.findings: type=array nullable=true items(EnhancedDataQualificationFindingDto)
- field EnhancedDataQualificationDto.gateReason: type=string nullable=true
- field EnhancedDataQualificationDto.processor: type=string nullable=true
- field EnhancedDataQualificationFindingDto.code: nullable=true allOf(CedpFindingCode)
- field EnhancedDataQualificationFindingDto.lineIndex: type=integer format=int32 nullable=true
- field TransactionDto.enhancedDataQualification: allOf(EnhancedDataQualificationDto)
- field WebhookPayloadSchemaField.description: type=string nullable=true
- schema CedpFindingCode: type=string enum=[BlankOrPlaceholderCommodityCode,BlankOrPlaceholderDescription,BlankOrPlaceholderProductCode,BlankOrPlaceholderUnitOfMeasure,Level3WithheldIncomplete,LineTotalMismatch,MissingCustomerCode,NoLineItems,QuantityNotPositive,QuantityTruncatedToWholeNumber,TaxRatioOutOfBounds,UnitPriceNotPositive,ZeroTaxWithoutExemptFlag]
- schema CedpQualificationLevel: type=string enum=[Level2,Level3,None]
- schema EnhancedDataQualificationDto: type=object additionalProperties=false
- schema EnhancedDataQualificationFindingDto: type=object additionalProperties=false

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
