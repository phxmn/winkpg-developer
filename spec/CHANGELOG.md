## 7.12.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field CreateSurchargeConfigurationDto.attestedCostOfAcceptanceRate: type=number format=double nullable=true
- field SurchargeEffectiveStatePoliciesDto.configurationExists: type=boolean
- field SurchargeEffectiveStatePoliciesDto.platformRulesEnforced: type=boolean
- field SurchargeEffectiveStatePoliciesDto.policies: type=array nullable=true items(SurchargeEffectiveStatePolicyDto)
- field SurchargeEffectiveStatePoliciesDto.resolvedAtUtc: type=string format=date-time
- field SurchargeEffectiveStatePolicyDto.capSource: SurchargeStateRuleSource
- field SurchargeEffectiveStatePolicyDto.effectiveCapRate: type=number format=double nullable=true
- field SurchargeEffectiveStatePolicyDto.effectiveIsProhibited: type=boolean
- field SurchargeEffectiveStatePolicyDto.hasMerchantOverride: type=boolean
- field SurchargeEffectiveStatePolicyDto.merchantCapRate: type=number format=double nullable=true
- field SurchargeEffectiveStatePolicyDto.merchantEntryIsIneffective: type=boolean
- field SurchargeEffectiveStatePolicyDto.merchantRestrictionType: SurchargeStateRestrictionType
- field SurchargeEffectiveStatePolicyDto.platformCapRate: type=number format=double nullable=true
- field SurchargeEffectiveStatePolicyDto.platformCitation: type=string nullable=true
- field SurchargeEffectiveStatePolicyDto.platformRestrictionType: SurchargeStateRestrictionType
- field SurchargeEffectiveStatePolicyDto.prohibitionSource: SurchargeStateRuleSource
- field SurchargeEffectiveStatePolicyDto.stateCode: type=string nullable=true
- field UpdateSurchargeConfigurationDto.attestedCostOfAcceptanceRate: type=number format=double nullable=true
- operation GET /api/surcharging/configurations/{merchantId}/state-policies/effective
- parameter GET /api/surcharging/configurations/{merchantId}/state-policies/effective path:merchantId: required type=string format=uuid
- parameter GET /api/surcharging/configurations/{merchantId}/state-policies/effective query:suppressNulls: optional type=boolean
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 200 (application/json): SurchargeEffectiveStatePoliciesDto
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 200 (text/json): SurchargeEffectiveStatePoliciesDto
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 200 (text/plain): SurchargeEffectiveStatePoliciesDto
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 400 (application/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 400 (text/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 400 (text/plain): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 401 (application/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 401 (text/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 401 (text/plain): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 403 (application/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 403 (text/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 403 (text/plain): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 404 (application/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 404 (text/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 404 (text/plain): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 429: no body
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 500 (application/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 500 (text/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 500 (text/plain): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 501 (application/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 501 (text/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective 501 (text/plain): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/{merchantId}/state-policies/effective default (application/json): RemoteServiceErrorResponse
- schema SurchargeEffectiveStatePoliciesDto: type=object additionalProperties=false
- schema SurchargeEffectiveStatePolicyDto: type=object additionalProperties=false
- schema SurchargeStateRuleSource: type=string enum=[MerchantConfiguration,None,PlatformPolicy]
- operation id surchargeConfigurationGetEffectiveStatePolicies (GET /api/surcharging/configurations/{merchantId}/state-policies/effective)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
