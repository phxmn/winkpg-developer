## 18.1.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Campaigns:CampaignComparisonTooManyCampaigns: 400
- field CreateHppSessionInput.campaignSource: type=string nullable=true maxLength=32
- field HppSessionDto.campaignSource: type=string nullable=true
- field TransactionSourceData.campaignId: type=string format=uuid nullable=true
- field TransactionSourceData.campaignSource: type=string nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
