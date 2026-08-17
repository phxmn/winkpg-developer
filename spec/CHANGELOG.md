## 7.1.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Notifications:DestinationConfigUnreadable: 409
- error code Notifications:SecretRotationAlreadyInProgress: 409
- error code Notifications:SecretRotationNoPrimarySecret: 409
- error code Notifications:SecretRotationNotInProgress: 409
- error code Notifications:SecretRotationNotSupported: 400
- error code Notifications:SecretRotationSecretInvalid: 400
- error code Notifications:SecretRotationSecretUnchanged: 409
- field BeginWebhookSecretRotationInput.incomingSecretKey: type=string nullable=true
- field BeginWebhookSecretRotationResultDto.incomingSecretKey: type=string nullable=true
- field BeginWebhookSecretRotationResultDto.state: WebhookSecretRotationStateDto
- field WebhookSecretRotationStateDto.isRotating: type=boolean
- field WebhookSecretRotationStateDto.rotationStartedUtc: type=string format=date-time nullable=true
- operation GET /api/notifications/destinations/{id}/secret-rotation
- operation POST /api/notifications/destinations/{id}/secret-rotation/begin
- operation POST /api/notifications/destinations/{id}/secret-rotation/cancel
- operation POST /api/notifications/destinations/{id}/secret-rotation/promote
- parameter GET /api/notifications/destinations/{id}/secret-rotation path:id: required type=string format=uuid
- parameter GET /api/notifications/destinations/{id}/secret-rotation query:suppressNulls: optional type=boolean
- parameter POST /api/notifications/destinations/{id}/secret-rotation/begin path:id: required type=string format=uuid
- parameter POST /api/notifications/destinations/{id}/secret-rotation/begin query:suppressNulls: optional type=boolean
- parameter POST /api/notifications/destinations/{id}/secret-rotation/cancel path:id: required type=string format=uuid
- parameter POST /api/notifications/destinations/{id}/secret-rotation/cancel query:suppressNulls: optional type=boolean
- parameter POST /api/notifications/destinations/{id}/secret-rotation/promote path:id: required type=string format=uuid
- parameter POST /api/notifications/destinations/{id}/secret-rotation/promote query:suppressNulls: optional type=boolean
- request body POST /api/notifications/destinations/{id}/secret-rotation/begin (application/*+json): optional BeginWebhookSecretRotationInput
- request body POST /api/notifications/destinations/{id}/secret-rotation/begin (application/json): optional BeginWebhookSecretRotationInput
- request body POST /api/notifications/destinations/{id}/secret-rotation/begin (text/json): optional BeginWebhookSecretRotationInput
- response GET /api/notifications/destinations/{id}/secret-rotation 200 (application/json): WebhookSecretRotationStateDto
- response GET /api/notifications/destinations/{id}/secret-rotation 200 (text/json): WebhookSecretRotationStateDto
- response GET /api/notifications/destinations/{id}/secret-rotation 200 (text/plain): WebhookSecretRotationStateDto
- response GET /api/notifications/destinations/{id}/secret-rotation 429: no body
- response GET /api/notifications/destinations/{id}/secret-rotation default (application/json): RemoteServiceErrorResponse
- response POST /api/notifications/destinations/{id}/secret-rotation/begin 200 (application/json): BeginWebhookSecretRotationResultDto
- response POST /api/notifications/destinations/{id}/secret-rotation/begin 200 (text/json): BeginWebhookSecretRotationResultDto
- response POST /api/notifications/destinations/{id}/secret-rotation/begin 200 (text/plain): BeginWebhookSecretRotationResultDto
- response POST /api/notifications/destinations/{id}/secret-rotation/begin 429: no body
- response POST /api/notifications/destinations/{id}/secret-rotation/begin default (application/json): RemoteServiceErrorResponse
- response POST /api/notifications/destinations/{id}/secret-rotation/cancel 200 (application/json): WebhookSecretRotationStateDto
- response POST /api/notifications/destinations/{id}/secret-rotation/cancel 200 (text/json): WebhookSecretRotationStateDto
- response POST /api/notifications/destinations/{id}/secret-rotation/cancel 200 (text/plain): WebhookSecretRotationStateDto
- response POST /api/notifications/destinations/{id}/secret-rotation/cancel 429: no body
- response POST /api/notifications/destinations/{id}/secret-rotation/cancel default (application/json): RemoteServiceErrorResponse
- response POST /api/notifications/destinations/{id}/secret-rotation/promote 200 (application/json): WebhookSecretRotationStateDto
- response POST /api/notifications/destinations/{id}/secret-rotation/promote 200 (text/json): WebhookSecretRotationStateDto
- response POST /api/notifications/destinations/{id}/secret-rotation/promote 200 (text/plain): WebhookSecretRotationStateDto
- response POST /api/notifications/destinations/{id}/secret-rotation/promote 429: no body
- response POST /api/notifications/destinations/{id}/secret-rotation/promote default (application/json): RemoteServiceErrorResponse
- schema BeginWebhookSecretRotationInput: type=object additionalProperties=false
- schema BeginWebhookSecretRotationResultDto: type=object additionalProperties=false
- schema WebhookSecretRotationStateDto: type=object additionalProperties=false
- operation id notificationsBeginSecretRotation (POST /api/notifications/destinations/{id}/secret-rotation/begin)
- operation id notificationsCancelSecretRotation (POST /api/notifications/destinations/{id}/secret-rotation/cancel)
- operation id notificationsGetSecretRotationState (GET /api/notifications/destinations/{id}/secret-rotation)
- operation id notificationsPromoteSecretRotation (POST /api/notifications/destinations/{id}/secret-rotation/promote)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
