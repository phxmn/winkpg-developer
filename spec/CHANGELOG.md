## 13.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed error code Merchants:ActiveProcessorProfileRequiresPaymentType: 403 -> 409
- Changed error code Merchants:ScreeningProviderProcessorConflict: 403 -> 409
- Changed field VirtualTerminalConvenienceFeeField.costOfAcceptanceAttestedBy: type=string nullable=true -> type=string nullable=true readOnly=true
- Changed field VirtualTerminalConvenienceFeeField.costOfAcceptanceAttestedOn: type=string format=date-time nullable=true -> type=string format=date-time nullable=true readOnly=true
- Changed field VirtualTerminalConvenienceFeeField.govEducationAttestedBy: type=string nullable=true -> type=string nullable=true readOnly=true
- Changed field VirtualTerminalConvenienceFeeField.govEducationAttestedOn: type=string format=date-time nullable=true -> type=string format=date-time nullable=true readOnly=true
- Changed field VirtualTerminalConvenienceFeeField.offlineChannelExceptionGrantedBy: type=string nullable=true -> type=string nullable=true readOnly=true
- Changed field VirtualTerminalConvenienceFeeField.offlineChannelExceptionGrantedOn: type=string format=date-time nullable=true -> type=string format=date-time nullable=true readOnly=true
- Changed field VirtualTerminalConvenienceFeeField.visaServiceFeeRegistrationRecordedBy: type=string nullable=true -> type=string nullable=true readOnly=true
- Changed field VirtualTerminalConvenienceFeeField.visaServiceFeeRegistrationRecordedOn: type=string format=date-time nullable=true -> type=string format=date-time nullable=true readOnly=true

### Additions

- error code OfflineAdjustment.FieldsRequired: 400
- error code OfflineAdjustment.TipOnlyUntilWpg20_2682: 400

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
