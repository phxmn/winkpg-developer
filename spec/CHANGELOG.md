## 18.4.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field CreateHppSessionInput.linkLifetime: allOf(HppLinkLifetime)
- field HppSessionDto.linkLifetime: allOf(HppLinkLifetime)
- field HppSessionEffectiveShapeDto.linkLifetime: allOf(HppLinkLifetime)
- schema HppLinkLifetime: type=string enum=[Extended,Permanent,Session]

### Compatible changes

- Widened field HppSessionCreatedDto.expiresAt: type=string format=date-time -> type=string format=date-time nullable=true
- Widened field HppSessionDto.expiresAt: type=string format=date-time -> type=string format=date-time nullable=true
- Widened field HppSessionDto.timeToLive: type=integer format=int32 -> type=integer format=int32 nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
