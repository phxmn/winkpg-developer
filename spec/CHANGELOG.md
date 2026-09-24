## 29.5.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Surcharging:NoticeNotFound: 404
- field AmendSurchargeNoticeReferenceDto.referenceNumber: type=string nullable=true maxLength=128
- field SurchargeNoticeRecordDto.amendedAt: type=string format=date-time nullable=true
- field SurchargeNoticeRecordDto.amendedBy: type=string format=uuid nullable=true
- field SurchargeNoticeRecordDto.noticeId: type=string format=uuid nullable=true
- schema AmendSurchargeNoticeReferenceDto: type=object additionalProperties=false

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
