## 18.5.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field HppSessionDto.amountMode: allOf(HppSessionAmountMode)
- field HppSessionDto.baseAmount: type=number format=double nullable=true
- field HppSessionDto.boundCustomerId: type=string format=uuid nullable=true
- field HppSessionDto.derivedState: allOf(HppSessionDerivedState)
- field HppSessionDto.lastSentAtUtc: type=string format=date-time nullable=true
- field HppSessionDto.lastSentTo: type=string nullable=true
- parameter GET /api/hostedpaymentpages/sessions query:Filter.Groups: optional type=array items(FilterGroup)
- parameter GET /api/hostedpaymentpages/sessions query:Filter.Logic: optional FilterLogic
- parameter GET /api/hostedpaymentpages/sessions query:Filter.Rules: optional type=array items(FilterRule)
- parameter GET /api/hostedpaymentpages/sessions query:Sorting.Descending: optional type=boolean
- parameter GET /api/hostedpaymentpages/sessions query:Sorting.Field: optional type=string
- schema HppSessionDerivedState: type=string enum=[Cancelled,Consumed,Expired,Revoked,Usable]

### Compatible changes

- Widened parameter GET /api/hostedpaymentpages/sessions query:HostedPageId: required type=string format=uuid -> optional type=string format=uuid

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
