## 30.4.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Shipping:QuoteDestinationChanged: 409
- error code Shipping:QuoteExpired: 409
- error code Shipping:QuoteNotFound: 404
- error code Shipping:QuoteOptionNotFound: 404
- field ShippingRateQuoteDto.optionId: type=string format=uuid nullable=true
- field ShippingRateQuoteResultDto.expiresAt: type=string format=date-time nullable=true
- field ShippingRateQuoteResultDto.quoteId: type=string format=uuid nullable=true

### Compatible changes

- Widened field AddressInputModel.state: required type=string nullable=true maxLength=100 -> type=string nullable=true maxLength=100
- Widened field AddressInputModel.zip: required type=string nullable=true -> type=string nullable=true

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
