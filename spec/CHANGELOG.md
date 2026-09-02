## 14.1.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field LoopbackSimulation.entries: type=array nullable=true items(LoopbackSimulationEntry)
- field LoopbackSimulationEntry.catalogId: type=string nullable=true
- field LoopbackSimulationEntry.effect: type=string nullable=true
- field LoopbackSimulationEntry.family: type=string nullable=true
- field LoopbackSimulationEntry.isDefault: type=boolean
- field LoopbackSimulationEntry.matchedOn: type=string nullable=true
- field LoopbackSimulationEntry.observedValue: type=string nullable=true
- field LoopbackSimulationEntry.resolvedCode: type=string nullable=true
- field TransactionDto.loopbackSimulation: LoopbackSimulation
- schema LoopbackSimulation: type=object additionalProperties=false
- schema LoopbackSimulationEntry: type=object additionalProperties=false

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
