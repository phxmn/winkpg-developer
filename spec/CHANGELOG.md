## 7.20.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field AnnouncementTargetAudienceCreateOrUpdateDtoMergePatch.roleNames: type=array nullable=true items(type=string)
- field AnnouncementTargetAudienceCreateOrUpdateDtoMergePatch.type: AudienceType
- field AnnouncementTargetAudienceCreateOrUpdateDtoMergePatch.userIds: type=array nullable=true items(type=string format=uuid)
- field UpdateAnnouncementDtoMergePatch.body: type=string nullable=true maxLength=8192 minLength=10
- field UpdateAnnouncementDtoMergePatch.concurrencyStamp: type=string nullable=true
- field UpdateAnnouncementDtoMergePatch.displayOptions: AnnouncementDisplayOptions
- field UpdateAnnouncementDtoMergePatch.endDateUtc: type=string format=date-time nullable=true
- field UpdateAnnouncementDtoMergePatch.externalLinkText: type=string nullable=true
- field UpdateAnnouncementDtoMergePatch.externalLinkUrl: type=string nullable=true
- field UpdateAnnouncementDtoMergePatch.isEnabled: type=boolean nullable=true
- field UpdateAnnouncementDtoMergePatch.merchantId: type=string format=uuid nullable=true
- field UpdateAnnouncementDtoMergePatch.priority: AnnouncementPriority
- field UpdateAnnouncementDtoMergePatch.resellerId: type=string format=uuid nullable=true
- field UpdateAnnouncementDtoMergePatch.scope: AnnouncementScope
- field UpdateAnnouncementDtoMergePatch.startDateUtc: type=string format=date-time nullable=true
- field UpdateAnnouncementDtoMergePatch.targetAudience: AnnouncementTargetAudienceCreateOrUpdateDtoMergePatch
- field UpdateAnnouncementDtoMergePatch.title: type=string nullable=true maxLength=256 minLength=3
- operation PATCH /api/announcements/{id}
- parameter PATCH /api/announcements/{id} path:id: required type=string format=uuid
- parameter PATCH /api/announcements/{id} query:suppressNulls: optional type=boolean
- request body PATCH /api/announcements/{id} (application/merge-patch+json): required UpdateAnnouncementDtoMergePatch
- response PATCH /api/announcements/{id} 200 (application/json): AnnouncementDto
- response PATCH /api/announcements/{id} 200 (text/json): AnnouncementDto
- response PATCH /api/announcements/{id} 200 (text/plain): AnnouncementDto
- response PATCH /api/announcements/{id} 400 (application/json): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 400 (text/json): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 400 (text/plain): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 401 (application/json): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 401 (text/json): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 401 (text/plain): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 403 (application/json): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 403 (text/json): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 403 (text/plain): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 404 (application/json): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 404 (text/json): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 404 (text/plain): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 429: no body
- response PATCH /api/announcements/{id} 500 (application/json): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 500 (text/json): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 500 (text/plain): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 501 (application/json): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 501 (text/json): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} 501 (text/plain): RemoteServiceErrorResponse
- response PATCH /api/announcements/{id} default (application/json): RemoteServiceErrorResponse
- schema AnnouncementTargetAudienceCreateOrUpdateDtoMergePatch: type=object additionalProperties=false
- schema UpdateAnnouncementDtoMergePatch: type=object additionalProperties=false
- operation id announcementsMergePatchUpdate (PATCH /api/announcements/{id})

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
