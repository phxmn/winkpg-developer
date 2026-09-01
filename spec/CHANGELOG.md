## 14.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field VirtualTerminalConvenienceFeeField.alternativeChannelAttestedBy: type=string nullable=true -> type=string nullable=true readOnly=true
- Changed field VirtualTerminalConvenienceFeeField.alternativeChannelAttestedOn: type=string format=date-time nullable=true -> type=string format=date-time nullable=true readOnly=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
