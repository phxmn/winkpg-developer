## 26.1.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field EffectiveCollectionConfigurationDto.allowAchPayments: type=boolean nullable=true
- field EffectiveCollectionConfigurationDto.allowCardPayments: type=boolean nullable=true
- field EffectiveCollectionConfigurationDto.captureHppPageId: type=string format=uuid nullable=true
- field EffectiveCollectionConfigurationDto.collectionMerchantId: type=string format=uuid nullable=true
- field EffectiveCollectionConfigurationDto.defaultFulfillmentPath: nullable=true allOf(BillingFulfillmentPath)
- field EffectiveCollectionConfigurationDto.isConfigured: type=boolean
- field EffectiveCollectionConfigurationDto.isInherited: type=boolean
- field EffectiveCollectionConfigurationDto.resellerId: type=string format=uuid
- field EffectiveCollectionConfigurationDto.sourceResellerId: type=string format=uuid
- field EffectiveCollectionConfigurationDto.sourceResellerName: type=string nullable=true
- field HppSessionCloneDataDto.hostedPageId: type=string format=uuid
- field HppSessionCloneDataDto.merchantId: type=string format=uuid
- field MerchantBillingPaymentMethodCaptureReadinessDto.effectiveResellerId: type=string format=uuid nullable=true
- field MerchantBillingPaymentMethodCaptureReadinessDto.effectiveResellerName: type=string nullable=true
- field MerchantBillingPaymentMethodCaptureReadinessDto.effectiveResellerWithinScope: type=boolean
- field MerchantBillingPaymentMethodCaptureReadinessDto.isInherited: type=boolean
- operation POST /api/resellers/get-effective-collection-configuration-async
- operation POST /api/resellers/get-own-effective-collection-configuration-async
- parameter POST /api/resellers/get-effective-collection-configuration-async query:resellerId: optional type=string format=uuid
- parameter POST /api/resellers/get-effective-collection-configuration-async query:suppressNulls: optional type=boolean
- parameter POST /api/resellers/get-own-effective-collection-configuration-async query:suppressNulls: optional type=boolean
- response POST /api/resellers/get-effective-collection-configuration-async 200 (application/json): EffectiveCollectionConfigurationDto
- response POST /api/resellers/get-effective-collection-configuration-async 200 (text/json): EffectiveCollectionConfigurationDto
- response POST /api/resellers/get-effective-collection-configuration-async 200 (text/plain): EffectiveCollectionConfigurationDto
- response POST /api/resellers/get-effective-collection-configuration-async 400 (application/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 400 (text/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 401 (application/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 401 (text/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 403 (application/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 403 (text/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 404 (application/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 404 (text/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 429: no body
- response POST /api/resellers/get-effective-collection-configuration-async 500 (application/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 500 (text/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 501 (application/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 501 (text/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/resellers/get-effective-collection-configuration-async default (application/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 200 (application/json): EffectiveCollectionConfigurationDto
- response POST /api/resellers/get-own-effective-collection-configuration-async 200 (text/json): EffectiveCollectionConfigurationDto
- response POST /api/resellers/get-own-effective-collection-configuration-async 200 (text/plain): EffectiveCollectionConfigurationDto
- response POST /api/resellers/get-own-effective-collection-configuration-async 400 (application/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 400 (text/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 401 (application/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 401 (text/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 403 (application/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 403 (text/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 404 (application/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 404 (text/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 429: no body
- response POST /api/resellers/get-own-effective-collection-configuration-async 500 (application/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 500 (text/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 501 (application/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 501 (text/json): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/resellers/get-own-effective-collection-configuration-async default (application/json): RemoteServiceErrorResponse
- schema EffectiveCollectionConfigurationDto: type=object additionalProperties=false
- operation id resellersGetEffectiveCollectionConfiguration (POST /api/resellers/get-effective-collection-configuration-async)
- operation id resellersGetOwnEffectiveCollectionConfiguration (POST /api/resellers/get-own-effective-collection-configuration-async)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
