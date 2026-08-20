## 7.16.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field DuplicateTransactionSettings.allowOverride: type=boolean nullable=true readOnly=true

### Compatible changes

- Widened field TransactionCreateDto.duplicateCheck: type=boolean -> type=boolean nullable=true
- Widened field TransactionDto.duplicateCheck: type=boolean -> type=boolean nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
