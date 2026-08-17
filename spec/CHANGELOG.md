## 7.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field Address.postalCode: type=string nullable=true -> type=string nullable=true maxLength=20
- Changed field AddressInputModel.postalCode: type=string nullable=true -> type=string nullable=true maxLength=20
- Changed field CustomerAddress.postalCode: type=string nullable=true -> type=string nullable=true maxLength=20
- Changed field MerchantAddress.postalCode: type=string nullable=true -> type=string nullable=true maxLength=20

### Additions

- field CustomerCreateDto.displayName: type=string nullable=true maxLength=100
- field CustomerDto.displayName: type=string nullable=true
- field CustomerUpdateDto.displayName: type=string nullable=true maxLength=100
- field GetNotificationDeliveryOutcomeSummaryInput.eventType: type=string nullable=true maxLength=512
- field GetNotificationDeliveryOutcomeSummaryInput.fromUtc: required type=string format=date-time
- field GetNotificationDeliveryOutcomeSummaryInput.merchantId: type=string format=uuid nullable=true
- field GetNotificationDeliveryOutcomeSummaryInput.toUtc: required type=string format=date-time exclusiveMinimum=true
- field NotificationDeliveryOutcomeSummaryDto.deadLettered: type=integer format=int64
- field NotificationDeliveryOutcomeSummaryDto.failed: type=integer format=int64
- field NotificationDeliveryOutcomeSummaryDto.fromUtc: type=string format=date-time
- field NotificationDeliveryOutcomeSummaryDto.pending: type=integer format=int64
- field NotificationDeliveryOutcomeSummaryDto.processing: type=integer format=int64
- field NotificationDeliveryOutcomeSummaryDto.skipped: type=integer format=int64
- field NotificationDeliveryOutcomeSummaryDto.succeeded: type=integer format=int64
- field NotificationDeliveryOutcomeSummaryDto.toUtc: type=string format=date-time
- field NotificationDeliveryOutcomeSummaryDto.total: type=integer format=int64 readOnly=true
- operation POST /api/notifications/deliveries/outcome-summary
- parameter POST /api/notifications/deliveries/outcome-summary query:suppressNulls: optional type=boolean
- request body POST /api/notifications/deliveries/outcome-summary (application/*+json): optional GetNotificationDeliveryOutcomeSummaryInput
- request body POST /api/notifications/deliveries/outcome-summary (application/json): optional GetNotificationDeliveryOutcomeSummaryInput
- request body POST /api/notifications/deliveries/outcome-summary (text/json): optional GetNotificationDeliveryOutcomeSummaryInput
- response POST /api/notifications/deliveries/outcome-summary 200 (application/json): NotificationDeliveryOutcomeSummaryDto
- response POST /api/notifications/deliveries/outcome-summary 200 (text/json): NotificationDeliveryOutcomeSummaryDto
- response POST /api/notifications/deliveries/outcome-summary 200 (text/plain): NotificationDeliveryOutcomeSummaryDto
- response POST /api/notifications/deliveries/outcome-summary 400: no body
- response POST /api/notifications/deliveries/outcome-summary 403: no body
- response POST /api/notifications/deliveries/outcome-summary 429: no body
- response POST /api/notifications/deliveries/outcome-summary default (application/json): RemoteServiceErrorResponse
- schema GetNotificationDeliveryOutcomeSummaryInput: type=object additionalProperties=false
- schema NotificationDeliveryOutcomeSummaryDto: type=object additionalProperties=false
- operation id notificationsGetDeliveryOutcomeSummary (POST /api/notifications/deliveries/outcome-summary)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
