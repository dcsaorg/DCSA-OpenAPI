## DCSA Domain

The Documentation Domain is documented on [**Documentation Domain**](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN) SwaggerHub.

The purpose of this Domain is to specify reusable objects for primarily Booking and electronic Bill of Lading.

<a name="v200"></a>[Release v2.0.0 (...)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/2.0.0)
---
This version is primaily connected to the new Booking API

- Bump [DCSA_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v200) (was previously v1.0.3)
- Bump [Location_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v200) (was previously v1.0.3)
- Rearranging and renaming objects and content:
  - `bookingHeaderNoID` renamed to `bookingShallow` with the following changes:
    - `bookingRequestID`, `bookingRequestDateTime`, `cargoGrossWeightUnit` removed
    - `receiptDeliveryTypeAtOrigin` renamed to `receiptTypeAtOrigin`
    - `receiptDeliveryTypeAtDestination` renamed to `deliveryTypeAtDestination`
    - `paymentTermCode` added
    - `partialLoadAllowed`, `exportDeclarationRequired`, `importLicenseRequired` prefixed with `is`
    - `placeOfReceiotPickupDate` and `finalDestinationExpectedArrivalDate` removed (they are now a `ShipmentLocation`)

    - `paymentTermCode`, `submissionDateTime`, `isAMSACIFilingRequired` added
    - all Boolean operators prefixed with `is`
    - `transportDocumentTypeCode` reffering to `transportDocumentTypeCode` instead of `transportDocumentType`
    - `invoicePayableAt` removed from `bookingShallow`
    - `carrierVoyageNumber` replaced by `exportVoyageNumber`
    - `preCarriageModeOfTransportCode` added
    - `OTICarrierCode` and `800SeriesCarrierCode` removed (they are not part of the `IdentifyingCode` in the `Party` object
    - `transportDocumentType` renamed to `transportDocumentTypeCode`
    - `valueAddedServiceRequest` field removed (it is now a list)
    - `invoicePayableAt` updated object reference to include locationID
    - `exportLicenseIssueDate` and `exportLicenseExpiryDate` both removed and moved into the `Commodity` object
    - added `vesselName`, `vesselIMONumber` and `carrierVoyageNumber` (they have been moved from `transportDraft` object which is no longer needed)
    - `serviceContractReference` and `submissionDateTime` are now required fields
    - `transportDocumentType` is no longer a required field
  - `bookingDeep` object added with all deeply nested objects
  - `bookingSummary`, `bookingRequest`, `bookings`, `booking` and `bookingRefStatus` object added
  - `shipmentSummary`, `shipments` and `shipment` object added
  - `shippingInstructionHeaderNoID` renamed to `shippingInstructionShallow` with the following changes:
    - `transportDocumentType` renamed to `transportDocumentTypeCode`
    - `preCarriageUnderShippersResponsibility` and `invoicePayableAt` removed
    - `isChargesDisplayed` removed and replaced by `areChargesDisplayedOnOriginals` and `areChargesDisplayedOnCopies`
    - modified description of `carrierBookingReference`
    - `displayedNameForPlaceOfReceipt`, `displayedNameForPortOfLoad``, `displayedNameForPortOfDischarge` and `displayedNameForPlaceOfDelivery` added
  - `shippingInstructionDeep` object added with all deeply nested objects
  - `shippingInstructionSummary`, `shippingInstructionRequest`, `shippingInstruction`, `shippingInstructionResponse` and `shippingInstructionRefStatus` objects added
- `commodity` object updated with `cargoGrossWeightUnit`, `exportLicenseIssueDate` and `exportLicenseExpiryDate`
- modified description of `carrierBookingReference` in `cargoItem`
- `references` added to `cargoItem`
- `equipmentReference` removed from `cargoItem`
- description of `utilizedTransportEquipment` updated
- each `utilizedTransportEquipment` now contains a list of `cargoItems`
- `partyContactDetails` moved from `documentParty` -> `party` and made a mandatory field
- `name` is now a mandatory field of `partyContactDetails`
- modified the example of the `location` object in `shipmentLocations`
- `locationType` renamed to `shipmentLocationTypeCode`
- `referenceType` added as local object
- `TransportDocumentHeader` renamed to `TransportDocumentSummaries` with the following changes:
  - `shippingInstructionID`, `documentStatus`, `transportDocumentCreatedDateTime` and `transportDocumentUpdatedDateTime` added
  - `termsAndConditions`, `cargoMovementTypeAtOrigin`, `cargoMovementTypeAtDestination`, `receiptDeliveryTypeAtOrigin`, `receiptDeliveryTypeAtDestination` and `serviceContractReference` removed
  - `numberOfOriginals` added
  - `issueDate` and `issuer` no longer mandatory fields
- `transportDocument` object updated:
  - `placeOfIssue` added
  - `transports` removed
- `partyContactDetails` in `party` object is now a list
- `partyContactDetail` is now an object
- `nmftaCode` removed
- `location` is now a required field in `ShipmentLocation`
- `eventDateTime` added to `ShipmentLocation`
- `clauses` renamed to `carrierClauses`
- `transportPlanStage`, `transportPlanStageSequenceNumber` and `vesselName` added to the `transport` object
- `transportPlanStage`, `transportPlanSequenceNumber`, `loadLocation`, `dischargeLocation`, `plannedDepartureDate`, `plannedArrivalDate`, `vesselName`, `vesselIMONumber` are now all required fields on `transport`
- `carierVoyageNumber` replaced by `importVoyageNumber` and `exportVoyageNumber` in `Transports`
- description updated for `requestedEquipment`
- `requestedEquipmentType` renamed to `requestedEquipmentSizeType`
- `requestedEquipmentSizeType`, `requestedEquipmentUnits` and `isShipperOwned` are now required fields on `requestedEquipment`
- `confirmedEquipment` and `confirmedEquipments` object added
- `shipmentCutOffTime` and `shipmentCutOffTimes` object added
- specialized version of documentStatus called `bookingDocumentStatus` created with only booking related values
- specialized version of documentTypeCode called `bookingDocumentTypeCode` created with only booking related values
- specialized version of shipmentEventTypeCode called `bookingShipmentEventTypeCode` created with only booking related values
- specialized version of documentStatus called `eblDocumentStatus` created with only eBL related values
- specialized version of documentTypeCode called `eblDocumentTypeCode` created with only eBL related values
- specialized version of shipmentEventTypeCode called `eblShipmentEventTypeCode` created with only eBL related values

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
