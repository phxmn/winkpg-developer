## 1.1.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field FileNoticeDto.attestedNoticeDate: type=string format=date nullable=true
- field SurchargeConfigurationDto.noticeAttestedDate: type=string format=date-time nullable=true
- field SurchargeNoticeRecordDto.attestedNoticeDate: type=string format=date-time nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
