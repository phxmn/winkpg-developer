## 19.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field AmountRangeSettings.maxAmount: type=number format=double nullable=true -> type=number format=double nullable=true minimum=0
- Changed field AmountRangeSettings.minAmount: type=number format=double nullable=true -> type=number format=double nullable=true minimum=0
- Changed field DuplicateTransactionSettings.windowHours: type=integer format=int32 nullable=true -> type=integer format=int32 nullable=true minimum=0 maximum=720
- Changed field VelocitySettings.maxAmountPerDay: type=number format=double nullable=true -> type=number format=double nullable=true minimum=0
- Changed field VelocitySettings.maxTxPerDay: type=integer format=int32 nullable=true -> type=integer format=int32 nullable=true minimum=0
- Changed field VelocitySettings.maxTxPerHour: type=integer format=int32 nullable=true -> type=integer format=int32 nullable=true minimum=0
- Changed field VelocitySettings.maxTxPerMinute: type=integer format=int32 nullable=true -> type=integer format=int32 nullable=true minimum=0

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
