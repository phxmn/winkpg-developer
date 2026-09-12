## 22.5.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field AddStoredPaymentMethodInput.readerTokenCardBrand: type=string nullable=true
- field AddStoredPaymentMethodInput.readerTokenMaskedCardNumber: type=string nullable=true
- field InvoiceProductCreateDto.dimensionUnit: nullable=true allOf(ShippingDimensionUnit)
- field InvoiceProductCreateDto.height: type=number format=double nullable=true minimum=0 maximum=99999.9999 exclusiveMinimum=true
- field InvoiceProductCreateDto.length: type=number format=double nullable=true minimum=0 maximum=99999.9999 exclusiveMinimum=true
- field InvoiceProductCreateDto.requiresShipping: type=boolean nullable=true
- field InvoiceProductCreateDto.weight: type=number format=double nullable=true minimum=0 maximum=999999.9999 exclusiveMinimum=true
- field InvoiceProductCreateDto.weightUnit: nullable=true allOf(ShippingWeightUnit)
- field InvoiceProductCreateDto.width: type=number format=double nullable=true minimum=0 maximum=99999.9999 exclusiveMinimum=true
- field InvoiceProductDto.dimensionUnit: nullable=true allOf(ShippingDimensionUnit)
- field InvoiceProductDto.height: type=number format=double nullable=true
- field InvoiceProductDto.length: type=number format=double nullable=true
- field InvoiceProductDto.requiresShipping: type=boolean nullable=true
- field InvoiceProductDto.weight: type=number format=double nullable=true
- field InvoiceProductDto.weightUnit: nullable=true allOf(ShippingWeightUnit)
- field InvoiceProductDto.width: type=number format=double nullable=true
- field InvoiceProductUpdateDto.dimensionUnit: nullable=true allOf(ShippingDimensionUnit)
- field InvoiceProductUpdateDto.height: type=number format=double nullable=true minimum=0 maximum=99999.9999 exclusiveMinimum=true
- field InvoiceProductUpdateDto.length: type=number format=double nullable=true minimum=0 maximum=99999.9999 exclusiveMinimum=true
- field InvoiceProductUpdateDto.requiresShipping: type=boolean nullable=true
- field InvoiceProductUpdateDto.weight: type=number format=double nullable=true minimum=0 maximum=999999.9999 exclusiveMinimum=true
- field InvoiceProductUpdateDto.weightUnit: nullable=true allOf(ShippingWeightUnit)
- field InvoiceProductUpdateDto.width: type=number format=double nullable=true minimum=0 maximum=99999.9999 exclusiveMinimum=true
- schema ShippingDimensionUnit: type=string enum=[Centimeter,Inch]
- schema ShippingWeightUnit: type=string enum=[Gram,Kilogram,Ounce,Pound]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
