## DCSA Domain

The DCSA Domain is documented on [**DCSA_DOMAIN**](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN) SwaggerHub.

The primary purpose of this Domain is to specify simple objects used in all DCSA Domains and APIs.

<a name="v200"></a>[Release v2.0.0 (...)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/2.0.0)
---
This version is primaily connected to the new Booking API

- Bump [DCSA_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v110)
- Bump [Location_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v110)
- `bookingRequestHeader` object updated (previosly `bookingHeader` object)
  - `bookingRequestID` removed (it is now a `ReferenceType`)
  - `receiptDeliveryTypeAtOrigin` renamed to `receiptTypeAtOrigin`
  - `receiptDeliveryTypeAtDestination` renamed to `deliveryTypeAtDestination`
  - `paymentTerm` added and changed into an Enum
  - all Boolean operators prefixed with `is`
  - `placeOfReceiotPickupDate`, `finalDestinationExpectedArrivalDate` and `invoicePayableAt` removed (they are now a `ShipmentLocation`)
  - `isAMSACIFilingRequired` added
  - `valueAddedServiceRequest` field removed (it is now a list)
  - `exportLicenseIssueDate` and `exportLicenseExpiryDate` both removed and moved into the `Commodity` object
  - `serviceContractReference` and `isEquipmentSubstitutionAllowed` are now required fields
  - `carrierBookingRequestReference` is now the ID of the `bookingRequest`
  - `carrierBookingReference` has been removed from `bookingRequest` (it is not available until `bookingConfirmation`)
  - `transportDraft` object removed
  - added `vesselName`, `vesselIMONumber` and `carrierVoyageNumber` (they have been moved from `transportDraft` object which is no longer needed)
- `bookingConfirmation` object added
- `commodity` object updated with `exportLicenseIssueDate` and `exportLicenseExpiryDate`
- `voyage` and `voyages` removed
- `valueAddedServiceRequest` object created
- description updated for `requestedEquipment`
- `requestedEquipmentType` renamed to `requestedEquipmentSizeType`
- `requestedEquipmentSizeType`, `requestedEquipmentUnits` and `isShipperOwned` are now required fields on `requestedEquipment`
- `confirmedEquipment` object added
- `shipmentCutOffTime` object added
- `location` object in `shippingInstructionHeader` now contains an ID
- the `party` object in `documentParties` now contains an ID
- `partyContactDetails` in `party` object is now a list
- add missing `)` in enum value `54` in `codeListResponsibleAgencyCode`
- add `eventDate` to `ShipmentLocation` object
- `location` is now a required field in `ShipmentLocation`
- `clauses` renamed to `carrierClauses`
- `transportPlanStage`, `transportPlanStageSequenceNumber` and `vesselName` added to the `transport` object
- `transportPlanStage`, `transportPlanSequenceNumber`, `loadLocation`, `dischargeLocation`, `plannedDepartureDate`, `plannedArrivalDate`, `vesselName`, `vesselIMONumber`, `carrierVoyageNumber` are now all required fields on `transport`
- ID added to all places where `location` object is used

<a name="v110"></a>[Release v1.1.0 (...)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/1.1.0)
---
Initial relese for Booking API

- Bump [DCSA_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v110)
- Bump [Location_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v110)
- Description updated: Booking added
- `bookingHeaderNoID` object updated
  - `bookingRequestID`, `bookingRequestDateTime`, `cargoGrossWeightUnit` removed
  - `receiptDeliveryTypeAtOrigin` renamed to `receiptTypeAtOrigin`
  - `receiptDeliveryTypeAtDestination` renamed to `deliveryTypeAtDestination`
  - `paymentTermCode`, `submissionDateTime`, `isAMSACIFilingRequired` added
  - all Boolean operators prefixed with `is`
  - `placeOfReceiotPickupDate` and `finalDestinationExpectedArrivalDate` removed (they are now a `ShipmentLocation`)
  - `OTICarrierCode` and `800SeriesCarrierCode` removed (they are not part of the `IdentifyingCode` in the `Party` object
  - `transportDocumentType` renamed to `transportDocumentTypeCode`
  - `valueAddedServiceRequest` field removed (it is now a list)
  - `invoicePayableAt` updated object reference to include locationID
  - `exportLicenseIssueDate` and `exportLicenseExpiryDate` both removed and moved into the `Commodity` object
  - added `vesselName`, `vesselIMONumber` and `carrierVoyageNumber` (they have been moved from `transportDraft` object which is no longer needed)
  - `serviceContractReference` and `submissionDateTime` are now required fields
  - `transportDocumentType` is no longer a required field
- `bookingHeader` object updated
  - `carrierBookingRequestReference` added and made mandatory
  - `carrierBookingReference` removed
- `bookingHeaderResponse` object created
- `bookingNoID` object updated
  - `valueAddedServiceRequests` added
  - `transportDraft` removed
- `booking` object updated
  - `valueAddedServiceRequests` added
  - `transportDraft` removed
  - `commodities` made mandatory
- `bookingResponse` object created
  - `carrierBookingRequestReference` is now the ID of the `bookingRequest`
  - `carrierBookingReference` has been removed from `bookingRequest` (it is not available until `bookingConfirmation`)
  - `transportDraft` object removed
- `bookingConfirmation`, `bookingConfirmationHeader`, `bookingConfirmation`, `valueAddedServiceRequests` and `valueAddedServiceRequest` object added
- `commodity` object updated with `cargoGrossWeightUnit`, `exportLicenseIssueDate` and `exportLicenseExpiryDate`
- `transportDraft`, `vessels`, `voyage` and `voyages` object removed
- description updated for `requestedEquipment`
- `requestedEquipmentType` renamed to `requestedEquipmentSizeType`
- `requestedEquipmentSizeType`, `requestedEquipmentUnits` and `isShipperOwned` are now required fields on `requestedEquipment`
- `confirmedEquipment` and `confirmedEquipments` object added
- `shipmentCutOffTime` and `shipmentCutOffTimes` object added
- `location` object in `shippingInstructionHeader` now contains an ID
- the `party` object in `documentParties` now contains an ID
- `partyContactDetails` in `party` object is now a list
- `partyContactDetail` is now an object


- add missing `)` in enum value `54` in `codeListResponsibleAgencyCode`
- add `eventDate` to `ShipmentLocation` object
- `location` is now a required field in `ShipmentLocation`
- `clauses` renamed to `carrierClauses`
- `transportPlanStage`, `transportPlanStageSequenceNumber` and `vesselName` added to the `transport` object
- `transportPlanStage`, `transportPlanSequenceNumber`, `loadLocation`, `dischargeLocation`, `plannedDepartureDate`, `plannedArrivalDate`, `vesselName`, `vesselIMONumber`, `carrierVoyageNumber` are now all required fields on `transport`
- ID added to all places where `location` object is used

<a name="v104"></a>[Release v1.0.4 (28 October 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/1.0.4)
---
This relase is used for JIT 1.1

- Bump [DCSA_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v103)
- Bump [Location_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v103)
- `bookingChannelReferenceNumber` renamed to `bookingChannelReference`
- `codeListName` has been added as a simpleType
- `identifyingCode` added as an object
- `codeListName` added as an optional field on `IdentifyingParty`
- `partyCode` is now mandatory in `IdentifyingParty`
- `codeListResponsibleAgencyCode` is marked deprecated and made optional
- `DCSAResponsibleAgencyCode` is added to `identifyingCode` and marked mandatory

<a name="v103"></a>[Release v1.0.3 (31 August 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/1.0.3)
---
Party object has been updated

- deprecated NMFTA field in Party object
- added `identifyingCodes` which is an array of objects to Party object. Each object consists of:
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
