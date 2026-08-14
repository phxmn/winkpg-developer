## 3.7.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Notifications:WebhookEventsMerchantRequired: 403
- field WebhookEventDetailDto.attemptCount: type=integer format=int32
- field WebhookEventDetailDto.correlationId: type=string nullable=true
- field WebhookEventDetailDto.destinationEndpoint: type=string nullable=true
- field WebhookEventDetailDto.destinationName: type=string nullable=true
- field WebhookEventDetailDto.durationMs: type=integer format=int64 nullable=true
- field WebhookEventDetailDto.eventId: type=string nullable=true
- field WebhookEventDetailDto.eventPayloadJson: type=string nullable=true
- field WebhookEventDetailDto.eventType: type=string nullable=true
- field WebhookEventDetailDto.httpStatusCode: type=integer format=int32 nullable=true
- field WebhookEventDetailDto.httpStatusReason: type=string nullable=true
- field WebhookEventDetailDto.id: type=string format=uuid
- field WebhookEventDetailDto.lastAttemptUtc: type=string format=date-time nullable=true
- field WebhookEventDetailDto.occurredAtUtc: type=string format=date-time
- field WebhookEventDetailDto.status: DeliveryStatus
- field WebhookEventDto.attemptCount: type=integer format=int32
- field WebhookEventDto.destinationName: type=string nullable=true
- field WebhookEventDto.durationMs: type=integer format=int64 nullable=true
- field WebhookEventDto.eventId: type=string nullable=true
- field WebhookEventDto.eventType: type=string nullable=true
- field WebhookEventDto.httpStatusCode: type=integer format=int32 nullable=true
- field WebhookEventDto.id: type=string format=uuid
- field WebhookEventDto.lastAttemptUtc: type=string format=date-time nullable=true
- field WebhookEventDto.occurredAtUtc: type=string format=date-time
- field WebhookEventDto.status: DeliveryStatus
- field WebhookEventPageDto.continuationToken: type=string nullable=true
- field WebhookEventPageDto.items: type=array nullable=true items(WebhookEventDto)
- operation GET /api/notifications/events
- operation GET /api/notifications/events/{id}
- parameter GET /api/notifications/events query:ContinuationToken: optional type=string
- parameter GET /api/notifications/events query:EventType: optional type=string
- parameter GET /api/notifications/events query:FromUtc: optional type=string format=date-time
- parameter GET /api/notifications/events query:MaxResultCount: optional type=integer format=int32
- parameter GET /api/notifications/events query:Status: optional DeliveryStatus
- parameter GET /api/notifications/events query:ToUtc: optional type=string format=date-time
- parameter GET /api/notifications/events query:suppressNulls: optional type=boolean
- parameter GET /api/notifications/events/{id} path:id: required type=string format=uuid
- parameter GET /api/notifications/events/{id} query:suppressNulls: optional type=boolean
- response GET /api/notifications/events 200 (application/json): WebhookEventPageDto
- response GET /api/notifications/events 200 (text/json): WebhookEventPageDto
- response GET /api/notifications/events 200 (text/plain): WebhookEventPageDto
- response GET /api/notifications/events 403: no body
- response GET /api/notifications/events default (application/json): RemoteServiceErrorResponse
- response GET /api/notifications/events/{id} 200 (application/json): WebhookEventDetailDto
- response GET /api/notifications/events/{id} 200 (text/json): WebhookEventDetailDto
- response GET /api/notifications/events/{id} 200 (text/plain): WebhookEventDetailDto
- response GET /api/notifications/events/{id} 403: no body
- response GET /api/notifications/events/{id} 404: no body
- response GET /api/notifications/events/{id} default (application/json): RemoteServiceErrorResponse
- schema DeliveryStatus: type=string enum=[DeadLettered,Failed,Pending,Processing,Skipped,Succeeded]
- schema WebhookEventDetailDto: type=object additionalProperties=false
- schema WebhookEventDto: type=object additionalProperties=false
- schema WebhookEventPageDto: type=object additionalProperties=false
- operation id notificationsGetWebhookEvent (GET /api/notifications/events/{id})
- operation id notificationsGetWebhookEvents (GET /api/notifications/events)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
