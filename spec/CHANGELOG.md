## 18.22.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field HppSessionDto.consumedPromotionCode: type=string nullable=true
- field TransactionSourceData.discountAmount: type=number format=double nullable=true
- field TransactionSourceData.promotionCode: type=string nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
