<a name="v110"></a>[Release v1.1.0 (...)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/1.1.0)
---
This version is primaily connected to the new Booking API

- Bump [DCSA_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v110)
- Bump [Location_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v103)
- `bookingRequestHeader` object updated (previosly `bookingHeader` object)
  - `paymentTerm` changed into an Enum
  - all Boolean operators prefixed with `is`
  - `bookingRequestID` removed (it is now a `ReferenceType`)
  - `placeOfReceiotPickupDate` and `finalDestinationExpectedArrivalDate` removed (they are now a `ShipmentLocation`)
  - `submissionDateTime` added
  - `valueAddedServiceRequest` field removed (it is now a list)
  - `exportLicenseIssueDate` and `exportLicenseExpiryDate` both removed and moved into the `Commodity` object
  - `serviceContractReference` and `isEquipmentSubstitutionAllowed` are now required fields
  - `bookingAcknowledgementID` is now the ID of the `bookingRequest`
  - `carrierBookingReference` has been removed from `bookingRequest` (it is not available until `bookingConfirmation`)
  - `references` list has been added
- `bookingConfirmation` object added
- `commodity` object updated with `exportLicenseIssueDate` and `exportLicenseExpiryDate`
- `transportDraft` object no longer an array and now only contains `vesselName`, `vesselIMONumber` and `carrierVoyageNumber`
- `voyage` removed
- `requestedEquipmentSizeType`, `requestedEquipmentUnits` and `isShipperOwned` are now required fields on `requestedEquipment`
- `confirmedEquipment` object added
- `shipmentCutOffTime` object added
- `codeListName` added as a simple object and added in `identifingCodes` object used in `Party`-object
- add missing `)` in enum value `54` in `codeListResponsibleAgencyCode`
- add `eventDate` to `ShipmentLocation` object
- `location` is now a required field in `ShipmentLocation`
- `transportPlanStage`, `transportPlanStageSequenceNumber` and `vesselName` added to the `transport` object
- `transportPlanStage`, `transportPlanSequenceNumber`, `loadLocation`, `dischargeLocation`, `plannedDepartureDate`, `plannedArrivalDate`, `vesselName`, `vesselIMONumber`, `carrierVoyageNumber` are now all required fields on `transport`

<a name="v104"></a>[Release v1.0.4 (...)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/1.0.4)
---
- Bump [DCSA_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v103)
- Bump [Location_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v103)
- `bookingChannelReferenceNumber` renamed to `bookingChannelReference`
- `partyCode` is now mandatory in `IdentifyingParty`
- `codeListResponsibleAgencyCode` is kept in this version even though it will be deprecated in next version as it is already in use in Hamburg Cluster
- `codeListName` has been added as an optional field on `IdentifyingParty`

<a name="v103"></a>[Release v1.0.3 (31 August 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/1.0.3)
---
Party object has been updated

- Deprecated NMFTA field in Party object
- Added `identifyingCodes` which is an array of objects to Party object. Each object consists of:
  - `codeListResponsibleAgencyCode`
  - `partyCode`

<a name="v102"></a>[Release v1.0.2 (25 August 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/1.0.2)
---
- Bump [DCSA_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v102)
- Bump [Location_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v102)

<a name="v101"></a>[Release v1.0.1 (02 August 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/1.0.1)
---
- Bump [DCSA_Domain to version 1.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v101)
- Bump [Location_Domain to version 1.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v101)

<a name="v100"></a>[Release v1.0.0 (30 June 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/1.0.0)
---
- Domain created and released
