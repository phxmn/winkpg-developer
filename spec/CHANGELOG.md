## 7.7.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Surcharging:ForceEnableNotAvailable: 403
- error code Surcharging:ForceEnableRequiresConfiguration: 409
- field SurchargeConfigurationDto.forceEnabledAt: type=string format=date-time nullable=true
- field SurchargeConfigurationDto.forceEnabledBy: type=string nullable=true
- operation GET /api/surcharging/configurations/force-enable/available
- operation POST /api/surcharging/configurations/{merchantId}/force-enable
- parameter GET /api/surcharging/configurations/force-enable/available query:suppressNulls: optional type=boolean
- parameter POST /api/surcharging/configurations/{merchantId}/force-enable path:merchantId: required type=string format=uuid
- parameter POST /api/surcharging/configurations/{merchantId}/force-enable query:suppressNulls: optional type=boolean
- response GET /api/surcharging/configurations/force-enable/available 200 (application/json): type=boolean
- response GET /api/surcharging/configurations/force-enable/available 200 (text/json): type=boolean
- response GET /api/surcharging/configurations/force-enable/available 200 (text/plain): type=boolean
- response GET /api/surcharging/configurations/force-enable/available 400 (application/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 400 (text/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 400 (text/plain): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 401 (application/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 401 (text/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 401 (text/plain): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 403 (application/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 403 (text/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 403 (text/plain): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 404 (application/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 404 (text/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 404 (text/plain): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 429: no body
- response GET /api/surcharging/configurations/force-enable/available 500 (application/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 500 (text/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 500 (text/plain): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 501 (application/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 501 (text/json): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available 501 (text/plain): RemoteServiceErrorResponse
- response GET /api/surcharging/configurations/force-enable/available default (application/json): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 200 (application/json): SurchargeConfigurationDto
- response POST /api/surcharging/configurations/{merchantId}/force-enable 200 (text/json): SurchargeConfigurationDto
- response POST /api/surcharging/configurations/{merchantId}/force-enable 200 (text/plain): SurchargeConfigurationDto
- response POST /api/surcharging/configurations/{merchantId}/force-enable 400 (application/json): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 400 (text/json): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 400 (text/plain): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 401 (application/json): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 401 (text/json): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 401 (text/plain): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 403 (application/json): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 403 (text/json): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 403 (text/plain): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 404 (application/json): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 404 (text/json): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 404 (text/plain): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 429: no body
- response POST /api/surcharging/configurations/{merchantId}/force-enable 500 (application/json): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 500 (text/json): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 500 (text/plain): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 501 (application/json): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 501 (text/json): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable 501 (text/plain): RemoteServiceErrorResponse
- response POST /api/surcharging/configurations/{merchantId}/force-enable default (application/json): RemoteServiceErrorResponse
- operation id surchargeConfigurationForceEnable (POST /api/surcharging/configurations/{merchantId}/force-enable)
- operation id surchargeConfigurationIsForceEnableAvailable (GET /api/surcharging/configurations/force-enable/available)

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
