## 3.4.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code AUTH_RESULT_TIMEOUT: 429
- error code Decline: 409
- error code InvalidMerchantInfo: 404
- error code MISSING_CONTEXT: 400
- error code OPERATION_NOT_ALLOWED: 409
- error code PinDebitNotSupportedOnCreditBin: 400
- error code PolicyRejected: 403
- error code ProcessorNotConfigured: 409
- error code Reject: 409
- error code SCREENING_STOPPED: 403
- error code SCREENING_UNAVAILABLE: 429
- error code UserAuthenticationFailed: 404
- error code VALIDATION_FAILED: 400

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
