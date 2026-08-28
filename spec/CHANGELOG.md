## 11.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Removed response DELETE /api/merchants/{id}/processor-profiles/{profileId} 200: no body
- Removed operation id merchantProcessorProfileCreate (POST /api/merchants/{id}/processor-profiles). The generated method of that name is gone from every package in this release.
- Removed operation id merchantProcessorProfileDelete (DELETE /api/merchants/{id}/processor-profiles/{profileId}). The generated method of that name is gone from every package in this release.
- Removed operation id merchantProcessorProfileGet (GET /api/merchants/{id}/processor-profiles/{profileId}). The generated method of that name is gone from every package in this release.
- Removed operation id merchantProcessorProfileGetList (GET /api/merchants/{id}/processor-profiles). The generated method of that name is gone from every package in this release.
- Removed operation id merchantProcessorProfileGetSummary (GET /api/merchants/{id}/processor-profiles/{profileId}/summary). The generated method of that name is gone from every package in this release.
- Removed operation id merchantProcessorProfileUpdate (PUT /api/merchants/{id}/processor-profiles/{profileId}). The generated method of that name is gone from every package in this release.

### Additions

- field ProcessorProfileDeletionResultDto.merchantConcurrencyStamp: type=string nullable=true
- parameter DELETE /api/merchants/{id}/processor-profiles/{profileId} header:If-Match: optional type=string
- parameter POST /api/merchants/{id}/processor-profiles header:If-Match: optional type=string
- parameter PUT /api/merchants/{id}/processor-profiles/{profileId} header:If-Match: optional type=string
- response DELETE /api/merchants/{id}/processor-profiles/{profileId} 200 (application/json): ProcessorProfileDeletionResultDto
- response DELETE /api/merchants/{id}/processor-profiles/{profileId} 200 (text/json): ProcessorProfileDeletionResultDto
- response DELETE /api/merchants/{id}/processor-profiles/{profileId} 200 (text/plain): ProcessorProfileDeletionResultDto
- schema ProcessorProfileDeletionResultDto: type=object additionalProperties=false
- operation id merchantProcessorProfileAddProcessorProfile (POST /api/merchants/{id}/processor-profiles)
- operation id merchantProcessorProfileDeleteProcessorProfile (DELETE /api/merchants/{id}/processor-profiles/{profileId})
- operation id merchantProcessorProfileGetProcessorProfile (GET /api/merchants/{id}/processor-profiles/{profileId})
- operation id merchantProcessorProfileGetProcessorProfileSummary (GET /api/merchants/{id}/processor-profiles/{profileId}/summary)
- operation id merchantProcessorProfileGetProcessorProfiles (GET /api/merchants/{id}/processor-profiles)
- operation id merchantProcessorProfileUpdateProcessorProfile (PUT /api/merchants/{id}/processor-profiles/{profileId})

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
