## 29.9.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Invoicing:PaymentPlan:InstallmentNotPending: 409
- error code Surcharging:ProcessorAccountNotFound: 400
- field SurchargeCardProcessorCoverageDto.isActive: type=boolean
- field SurchargeCardProcessorCoverageDto.isCovered: type=boolean
- field SurchargeCardProcessorCoverageDto.processorId: type=string nullable=true
- field SurchargeCardProcessorCoverageDto.processorName: type=string nullable=true
- field SurchargeCardProcessorCoverageDto.processorProfileId: type=string format=uuid
- field SurchargeConfigurationDto.cardProcessorCoverage: type=array nullable=true items(SurchargeCardProcessorCoverageDto)
- field SurchargeNoticeRecordDto.coveredProcessorProfileIds: type=array nullable=true items(type=string format=uuid)
- field SurchargeNoticeRecordDto.coversAllProcessors: type=boolean
- response POST /api/invoicing/invoices/{id}/payment-plan/pay-installment 409: no body
- schema SurchargeCardProcessorCoverageDto: type=object additionalProperties=false

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
