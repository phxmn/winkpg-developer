## 27.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Changed field InvoicePartySnapshotDto.addressLine1: type=string nullable=true -> type=string nullable=true maxLength=200
- Changed field InvoicePartySnapshotDto.addressLine2: type=string nullable=true -> type=string nullable=true maxLength=200
- Changed field InvoicePartySnapshotDto.city: type=string nullable=true -> type=string nullable=true maxLength=100
- Changed field InvoicePartySnapshotDto.companyName: type=string nullable=true -> type=string nullable=true maxLength=200
- Changed field InvoicePartySnapshotDto.country: type=string nullable=true -> type=string nullable=true maxLength=100
- Changed field InvoicePartySnapshotDto.email: type=string nullable=true -> type=string nullable=true maxLength=256
- Changed field InvoicePartySnapshotDto.logoUrl: type=string nullable=true -> type=string nullable=true maxLength=2048
- Changed field InvoicePartySnapshotDto.name: type=string nullable=true -> type=string nullable=true maxLength=200
- Changed field InvoicePartySnapshotDto.phone: type=string nullable=true -> type=string nullable=true maxLength=30
- Changed field InvoicePartySnapshotDto.postalCode: type=string nullable=true -> type=string nullable=true maxLength=20
- Changed field InvoicePartySnapshotDto.state: type=string nullable=true -> type=string nullable=true maxLength=100
- Changed field InvoicePartySnapshotDto.taxId: type=string nullable=true -> type=string nullable=true maxLength=50

### Additions

- error code Invoicing:TaxRateLookup:BillerNotMerchant: 400
- error code Invoicing:TaxRateLookup:NoDestinationAddress: 409
- error code Invoicing:TaxRateLookup:NoOriginAddress: 409
- error code Invoicing:TaxRateLookup:ProviderFailed: 409
- error code Invoicing:TaxRateLookup:ProviderUnavailable: 409
- field InvoiceLineItemDto.taxRateProviderName: type=string nullable=true
- field InvoiceLineItemDto.taxRateSource: nullable=true allOf(InvoiceTaxRateSource)
- field InvoiceLineItemInputDto.taxRateProviderName: type=string nullable=true maxLength=50
- field InvoiceLineItemInputDto.taxRateSource: nullable=true allOf(InvoiceTaxRateSource)
- field InvoiceTaxRateLookupInput.billerId: required type=string format=uuid
- field InvoiceTaxRateLookupInput.billerSnapshot: allOf(InvoicePartySnapshotDto)
- field InvoiceTaxRateLookupInput.billerType: allOf(InvoicePartyType)
- field InvoiceTaxRateLookupInput.recipientId: type=string format=uuid nullable=true
- field InvoiceTaxRateLookupInput.recipientSnapshot: allOf(InvoicePartySnapshotDto)
- field InvoiceTaxRateLookupInput.recipientType: allOf(InvoicePartyType)
- field InvoiceTaxRateLookupResultDto.isFreightTaxable: type=boolean
- field InvoiceTaxRateLookupResultDto.jurisdiction: type=string nullable=true
- field InvoiceTaxRateLookupResultDto.normalizedAddress: type=string nullable=true
- field InvoiceTaxRateLookupResultDto.providerName: type=string nullable=true
- field InvoiceTaxRateLookupResultDto.ratePercent: type=number format=double
- operation POST /api/invoicing/invoices/tax-rate-lookup
- parameter POST /api/invoicing/invoices/tax-rate-lookup query:suppressNulls: optional type=boolean
- request body POST /api/invoicing/invoices/tax-rate-lookup (application/*+json): optional InvoiceTaxRateLookupInput
- request body POST /api/invoicing/invoices/tax-rate-lookup (application/json): optional InvoiceTaxRateLookupInput
- request body POST /api/invoicing/invoices/tax-rate-lookup (text/json): optional InvoiceTaxRateLookupInput
- response POST /api/invoicing/invoices/tax-rate-lookup 200 (application/json): InvoiceTaxRateLookupResultDto
- response POST /api/invoicing/invoices/tax-rate-lookup 200 (text/json): InvoiceTaxRateLookupResultDto
- response POST /api/invoicing/invoices/tax-rate-lookup 200 (text/plain): InvoiceTaxRateLookupResultDto
- response POST /api/invoicing/invoices/tax-rate-lookup 400: no body
- response POST /api/invoicing/invoices/tax-rate-lookup 401 (application/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/tax-rate-lookup 401 (text/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/tax-rate-lookup 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/tax-rate-lookup 403 (application/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/tax-rate-lookup 403 (text/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/tax-rate-lookup 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/tax-rate-lookup 404: no body
- response POST /api/invoicing/invoices/tax-rate-lookup 409: no body
- response POST /api/invoicing/invoices/tax-rate-lookup 429: no body
- response POST /api/invoicing/invoices/tax-rate-lookup 500 (application/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/tax-rate-lookup 500 (text/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/tax-rate-lookup 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/tax-rate-lookup 501 (application/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/tax-rate-lookup 501 (text/json): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/tax-rate-lookup 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/invoicing/invoices/tax-rate-lookup default (application/json): RemoteServiceErrorResponse
- schema InvoiceTaxRateLookupInput: type=object additionalProperties=false
- schema InvoiceTaxRateLookupResultDto: type=object additionalProperties=false
- schema InvoiceTaxRateSource: type=string enum=[Catalog,Manual,Provider]
- operation id invoiceTaxRateLookupLookup (POST /api/invoicing/invoices/tax-rate-lookup)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
