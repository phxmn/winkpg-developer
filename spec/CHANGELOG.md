## 22.0.0

Major release: this version changes or removes surface that earlier versions published. Read the breaking changes below before upgrading.

### Breaking changes

- Removed error code Dashboards:CannotDeleteDefaultView: 409
- Removed error code Dashboards:MaxViewsPerUserExceeded: 403
- Removed error code Dashboards:SourceViewNotFound: 404
- Removed error code Dashboards:ViewNotFound: 404
- Removed error code Mfa:CannotDisableSoleMethod: 409
- Removed error code Mfa:ChallengeExpired: 409
- Removed error code Mfa:InvalidVerificationCode: 400
- Removed error code Mfa:PasswordIncorrect: 403
- Removed error code Mfa:PasswordRequired: 400
- Removed error code Mfa:RecoveryCodeInvalid: 400
- Removed error code Mfa:SetupRequired: 403
- Removed error code Mfa:TotpAlreadyEnabled: 409
- Removed error code Mfa:TotpNotEnabled: 409
- Removed error code PGV2:CannotChangeMerchantWhileImpersonating: 409
- Removed error code WinkPG.Scoring:MerchantAccessDenied: 403
- Removed error code WinkPG.Scoring:UnknownDecayModel: 400
- Removed error code WinkPG.UserSettingsAdmin:InvalidTargetUser: 400
- Removed error code WinkPG.UserSettingsAdmin:SettingNotResettable: 403

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
