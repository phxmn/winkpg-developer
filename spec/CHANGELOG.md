## 7.3.0

Minor release: this version only adds surface, or widens what an existing call accepts. Code written against the previous version keeps working.

### Additions

- field LodgingData.chargeDescriptor: LodgingChargeDescriptor
- field LodgingData.checkInDate: type=string format=date nullable=true
- field LodgingData.checkOutDate: type=string format=date nullable=true
- field LodgingData.extraChargeAmount: type=number format=double nullable=true
- field LodgingData.extraCharges: LodgingExtraCharges
- field LodgingData.folioNumber: type=string nullable=true maxLength=22
- field LodgingData.nights: type=integer format=int32 nullable=true
- field LodgingData.preferredCustomer: type=boolean nullable=true
- field LodgingData.saleCode: LodgingSaleCode
- field TransactionCreateDto.lodging: LodgingData
- field TransactionDto.lodging: LodgingData
- schema LodgingChargeDescriptor: type=string enum=[ConventionFees,GiftShop,GolfShop,HairSalon,HealthClub,Lodging,Restaurant,TennisClub]
- schema LodgingData: type=object additionalProperties=false
- schema LodgingExtraCharges: type=string enum=[GiftShop,Laundry,MiniBar,None,Other,Restaurant,Telephone]
- schema LodgingSaleCode: type=string enum=[AssuredReservation,DelayedCharge,Deposit,ExpressService,NoShow,Sale]

This changelog is generated from the published OpenAPI contract, not hand written. Every entry names a fact an integrator can observe.
