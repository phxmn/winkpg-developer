## 7.4.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Transactions:ReviewDispositionNotObserved: 429
- error code Transactions:ReviewDispositionReasonNotPermitted: 400
- error code Transactions:ReviewDispositionReasonRequired: 400
- error code Transactions:ReviewDispositionReasonTooLong: 400
- error code Transactions:ReviewHoldNotFound: 404
- error code Transactions:ReviewNotPending: 409
- error code Transactions:ReviewTransactionNotFound: 404

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
