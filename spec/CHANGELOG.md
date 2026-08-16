## 5.4.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field FraudReviewData.deadlineUtc: type=string format=date-time nullable=true
- field FraudReviewData.disposition: FraudReviewDisposition
- field FraudReviewData.dispositionAtUtc: type=string format=date-time nullable=true
- field FraudReviewData.dispositionByUserId: type=string format=uuid nullable=true
- field FraudReviewData.dispositionReasonCode: type=string nullable=true
- field FraudReviewData.heldAtUtc: type=string format=date-time nullable=true
- field FraudReviewData.score: type=number format=double nullable=true
- field FraudReviewData.triggeringProviderId: type=string nullable=true
- field FraudReviewData.triggeringProviderName: type=string nullable=true
- field GetTransactionContinuationInput.reviewDisposition: FraudReviewDisposition
- field TransactionDto.fraudReviewData: FraudReviewData
- schema FraudReviewData: type=object additionalProperties=false
- schema FraudReviewDisposition: type=string enum=[Approved,Declined,ExpiredApproved,ExpiredDeclined,Pending]

### Compatible changes

- Widened schema TransactionDecisionNoteCategory: type=string enum=[ConvenienceFee,Surcharge] -> type=string enum=[ConvenienceFee,FraudReview,Surcharge]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
