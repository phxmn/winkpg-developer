## 6.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Removed field WalletCertificateSnapshot.certificateName: type=string nullable=true
- Removed field WalletCertificateSnapshot.certificateType: type=string nullable=true
- Removed field WalletCertificateSnapshot.daysUntilExpiry: type=integer format=int32 nullable=true
- Removed field WalletCertificateSnapshot.hasPendingRenewal: type=boolean nullable=true
- Removed field WalletCertificateSnapshot.id: type=string format=uuid
- Removed field WalletCertificateSnapshot.lastSyncedAt: type=string format=date-time nullable=true
- Removed field WalletCertificateSnapshot.notAfter: type=string format=date-time nullable=true
- Removed field WalletCertificateSnapshot.notBefore: type=string format=date-time nullable=true
- Removed field WalletCertificateSnapshot.status: type=string nullable=true
- Removed field WalletCertificateSnapshot.thumbprint: type=string nullable=true
- Removed field WalletProviderRegistrationDto.certificates: type=array nullable=true items(WalletCertificateSnapshot)
- Removed schema WalletCertificateSnapshot: type=object additionalProperties=false

### Additions

- error code WinkPG.Scoring:MerchantAccessDenied: 403

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
