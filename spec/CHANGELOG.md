## 18.23.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Surcharging:PromotionBlockedByPolicy: 409
- error code Surcharging:PromotionHeld: 409
- field CreateSurchargeConfigurationDto.holdPromotion: type=boolean nullable=true
- field CreateSurchargeConfigurationDto.promotionHoldReason: type=string nullable=true maxLength=500
- field PlaceSurchargePromotionHoldDto.reason: type=string nullable=true maxLength=500
- field SurchargeConfigurationDto.autoPromotionBlockedReason: nullable=true allOf(SurchargeAutoPromotionBlockReason)
- field SurchargeConfigurationDto.promotionHeldAt: type=string format=date-time nullable=true
- field SurchargeConfigurationDto.promotionHeldBy: type=string nullable=true
- field SurchargeConfigurationDto.promotionHoldReason: type=string nullable=true
- field SurchargeNoticeRecordDto.filedByApiKeyId: type=string format=uuid nullable=true
- field SurchargeNoticeRecordDto.filedByApiKeyName: type=string nullable=true
- schema PlaceSurchargePromotionHoldDto: type=object additionalProperties=false
- schema SurchargeAutoPromotionBlockReason: type=string enum=[NoApiFiledNotice,PolicyNone]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
