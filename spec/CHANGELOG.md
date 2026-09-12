## 22.8.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Campaigns:CampaignCapReached: 409
- error code Campaigns:LimitMustBePositive: 400
- field CampaignDto.approvedTotal: type=number format=double
- field CampaignDto.completedCount: type=integer format=int32
- field CampaignDto.goalAmount: type=number format=double nullable=true
- field CampaignDto.lastCompletedAtUtc: type=string format=date-time nullable=true
- field CampaignDto.maxCompletions: type=integer format=int32 nullable=true
- field CampaignDto.maxTotalAmount: type=number format=double nullable=true
- field CampaignDto.netTotal: type=number format=double
- field CampaignDto.percentOfGoal: type=integer format=int32 nullable=true
- field CampaignDto.refundedTotal: type=number format=double
- field CampaignDto.refundsReduceTotal: type=boolean
- field CampaignDto.showProgress: type=boolean
- field CampaignProgressDto.campaignId: type=string format=uuid
- field CampaignProgressDto.completedCount: type=integer format=int32
- field CampaignProgressDto.goalAmount: type=number format=double nullable=true
- field CampaignProgressDto.maxCompletions: type=integer format=int32 nullable=true
- field CampaignProgressDto.percentOfGoal: type=integer format=int32 nullable=true
- field CampaignProgressDto.total: type=number format=double
- field CreateCampaignDto.goalAmount: type=number format=double nullable=true minimum=0 exclusiveMinimum=true
- field CreateCampaignDto.maxCompletions: type=integer format=int32 nullable=true minimum=0 exclusiveMinimum=true
- field CreateCampaignDto.maxTotalAmount: type=number format=double nullable=true minimum=0 exclusiveMinimum=true
- field CreateCampaignDto.refundsReduceTotal: type=boolean
- field CreateCampaignDto.showProgress: type=boolean
- field UpdateCampaignDto.goalAmount: type=number format=double nullable=true minimum=0 exclusiveMinimum=true
- field UpdateCampaignDto.maxCompletions: type=integer format=int32 nullable=true minimum=0 exclusiveMinimum=true
- field UpdateCampaignDto.maxTotalAmount: type=number format=double nullable=true minimum=0 exclusiveMinimum=true
- field UpdateCampaignDto.refundsReduceTotal: type=boolean
- field UpdateCampaignDto.showProgress: type=boolean
- operation GET /api/campaigns/{id}/progress
- parameter GET /api/campaigns/{id}/progress path:id: required type=string format=uuid
- parameter GET /api/campaigns/{id}/progress query:suppressNulls: optional type=boolean
- response GET /api/campaigns/{id}/progress 200 (application/json): CampaignProgressDto
- response GET /api/campaigns/{id}/progress 200 (text/json): CampaignProgressDto
- response GET /api/campaigns/{id}/progress 200 (text/plain): CampaignProgressDto
- response GET /api/campaigns/{id}/progress 404: no body
- response GET /api/campaigns/{id}/progress 429: no body
- response GET /api/campaigns/{id}/progress default (application/json): RemoteServiceErrorResponse
- schema CampaignProgressDto: type=object additionalProperties=false
- operation id campaignProgressGetProgress (GET /api/campaigns/{id}/progress)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
