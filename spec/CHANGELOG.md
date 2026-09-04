## 18.3.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Notifications:WebhookReplayBudgetExhausted: 429
- error code Notifications:WebhookReplayEndpointSuppressed: 409
- error code Notifications:WebhookReplayUnavailable: 409
- field ReplayWebhookEventsInput.eventType: type=string nullable=true maxLength=512
- field ReplayWebhookEventsInput.fromUtc: required type=string format=date-time
- field ReplayWebhookEventsInput.status: nullable=true allOf(DeliveryStatus)
- field ReplayWebhookEventsInput.toUtc: required type=string format=date-time exclusiveMinimum=true
- field WebhookEventRedriveResultDto.attempted: type=integer format=int32
- field WebhookEventRedriveResultDto.considered: type=integer format=int32
- field WebhookEventRedriveResultDto.delivered: type=integer format=int32
- field WebhookEventRedriveResultDto.failed: type=integer format=int32
- field WebhookEventRedriveResultDto.notAttempted: type=integer format=int32
- field WebhookEventRedriveResultDto.notRetryable: type=integer format=int32
- field WebhookEventRedriveResultDto.notSent: type=integer format=int32
- field WebhookEventRedriveResultDto.rateLimited: type=integer format=int32
- field WebhookEventRedriveResultDto.reachedCap: type=boolean
- field WebhookEventRedriveResultDto.suppressed: type=integer format=int32
- field WebhookEventReplayResultDto.id: type=string format=uuid
- field WebhookEventReplayResultDto.outcome: allOf(WebhookEventReplayOutcome)
- operation POST /api/notifications/events/replay
- operation POST /api/notifications/events/{id}/replay
- parameter GET /api/hostedpaymentpages/sessions query:ExpiredOnly: optional type=boolean
- parameter POST /api/notifications/events/replay query:suppressNulls: optional type=boolean
- parameter POST /api/notifications/events/{id}/replay path:id: required type=string format=uuid
- parameter POST /api/notifications/events/{id}/replay query:suppressNulls: optional type=boolean
- request body POST /api/notifications/events/replay (application/*+json): optional ReplayWebhookEventsInput
- request body POST /api/notifications/events/replay (application/json): optional ReplayWebhookEventsInput
- request body POST /api/notifications/events/replay (text/json): optional ReplayWebhookEventsInput
- response POST /api/notifications/events/replay 200 (application/json): WebhookEventRedriveResultDto
- response POST /api/notifications/events/replay 200 (text/json): WebhookEventRedriveResultDto
- response POST /api/notifications/events/replay 200 (text/plain): WebhookEventRedriveResultDto
- response POST /api/notifications/events/replay 400: no body
- response POST /api/notifications/events/replay 403: no body
- response POST /api/notifications/events/replay 409: no body
- response POST /api/notifications/events/replay 429: no body
- response POST /api/notifications/events/replay default (application/json): RemoteServiceErrorResponse
- response POST /api/notifications/events/{id}/replay 200 (application/json): WebhookEventReplayResultDto
- response POST /api/notifications/events/{id}/replay 200 (text/json): WebhookEventReplayResultDto
- response POST /api/notifications/events/{id}/replay 200 (text/plain): WebhookEventReplayResultDto
- response POST /api/notifications/events/{id}/replay 403: no body
- response POST /api/notifications/events/{id}/replay 404: no body
- response POST /api/notifications/events/{id}/replay 409: no body
- response POST /api/notifications/events/{id}/replay 429: no body
- response POST /api/notifications/events/{id}/replay default (application/json): RemoteServiceErrorResponse
- schema ReplayWebhookEventsInput: type=object additionalProperties=false
- schema WebhookEventRedriveResultDto: type=object additionalProperties=false
- schema WebhookEventReplayOutcome: type=string enum=[Attempted,Delivered,Failed,NotSent]
- schema WebhookEventReplayResultDto: type=object additionalProperties=false
- operation id notificationsReplayWebhookEvent (POST /api/notifications/events/{id}/replay)
- operation id notificationsReplayWebhookEvents (POST /api/notifications/events/replay)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
