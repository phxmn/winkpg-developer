## 31.2.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code Transactions:ReceiptSplitTenderSummaryNotGeneratedPerTransaction: 400
- field Contract.customFields: type=array nullable=true items(ContractCustomField)
- field ContractCreateDto.customFields: type=array nullable=true items(ContractCustomField)
- field ContractCustomField.definitionId: type=string format=uuid nullable=true
- field ContractCustomField.legacyKey: type=integer format=int32 nullable=true
- field ContractCustomField.name: type=string nullable=true maxLength=50
- field ContractCustomField.value: required type=string nullable=true maxLength=300
- field ContractDto.customFields: type=array nullable=true items(ContractCustomField)
- field ContractUpdateDto.customFields: type=array nullable=true items(ContractCustomField)
- operation GET /api/merchants/{id}/custom-fields
- parameter GET /api/merchants/{id}/custom-fields path:id: required type=string format=uuid
- parameter GET /api/merchants/{id}/custom-fields query:suppressNulls: optional type=boolean
- response GET /api/merchants/{id}/custom-fields 200 (application/json): type=array items(CustomField)
- response GET /api/merchants/{id}/custom-fields 200 (text/json): type=array items(CustomField)
- response GET /api/merchants/{id}/custom-fields 200 (text/plain): type=array items(CustomField)
- response GET /api/merchants/{id}/custom-fields 400 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 400 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 400 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 401 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 401 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 401 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 403 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 403 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 403 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 404 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 404 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 404 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 429: no body
- response GET /api/merchants/{id}/custom-fields 500 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 500 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 500 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 501 (application/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 501 (text/json): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields 501 (text/plain): RemoteServiceErrorResponse
- response GET /api/merchants/{id}/custom-fields default (application/json): RemoteServiceErrorResponse
- schema ContractCustomField: type=object additionalProperties=false
- operation id merchantsGetCustomFieldsForMerchant (GET /api/merchants/{id}/custom-fields)

### Compatible changes

- Widened schema ReceiptType: type=string enum=[Authorization,Capture,OnDemand,PartialRefund,PartialReversal,Refund,Reversal,Void] -> type=string enum=[Authorization,Capture,OnDemand,PartialRefund,PartialReversal,Refund,Reversal,SplitTenderSummary,Void]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
