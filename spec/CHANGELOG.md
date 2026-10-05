## 33.4.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- error code CardData:EntryModeIncompatibleWithTerminalCapability: 400
- field CardData.terminalCapability: nullable=true allOf(TerminalCapability)
- schema TerminalCapability: type=string enum=[Chip,ChipContactless,ChipContactlessWithPin,ChipWithPin,MagneticStripe,MagneticStripeWithPin,Unspecified]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
