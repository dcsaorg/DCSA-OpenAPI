## Documentation Domain

The Documentation Domain is documented on [**Documentation Domain**](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN) SwaggerHub.

This Domain specifies reusable objects for the eDocumentation: [Booking](https://app.swaggerhub.com/apis/dcsaorg/DCSA_BKG) and [Electronic Bill of Lading](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL).

<a name="v300"></a>[Release v3.0.0 (28 December 2023)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/3.0.0)
---
A major rewrite of the Documnetation Domain. Less reuse of objects since endPoints using the objects are asymetric. This release is for Booking v2.0.0 Beta 1 and EBL v3.0.0 Beta 1. `Dangerous Goods` and `Active Reefer Settins` added and all location objects now use `oneOf` instead of `amnyOf`

- object names are now capitalized
- objects now contain the `title` property for viasual presentation. It maay contain spaces
- Bump [DCSA_Domain to version 3.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v310) (was previously v2.0.3)
- Bump [Location_Domain to version 4.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v400) (was previously v2.0.3)
- added `requestedChanges` object to keep track of  changes requested by the provider (carrier)

**For Booking**:
- `CreateBooking` object added in order to create a new `Booking`. Compared to previous version:
  - `freightPaymentTermCode`, `originChargesPaymentTermCode`, `destinationChargesPaymentTermCode` added
  - `paymentTermCode`, `preCarriageModeOfTransportCode` removed
  - `isCustomsFilingSubmissionByShipper` removed and substituted with the `advanceManifestFilings` in the `Shipping Instructions`
  - `vesselName ` and `vesselIMONumber` moved into `vessel` object
  - `invoicePayableAt` and `placeOfBLIssue` structure changed from an `anyOf` --> `oneOf`
  - `partyContactDetails` added for contact details regarding the booking
  - `shipmentLocations` and `requestedEquipments` is now mandatory
  - `valueAddedServices` removed
  - `commodities` removed from root level and added below `requestedEquipments`
- `UpdateBooking` object added in order to update an existing `Booking`
- `Booking` object added in order to fetch a `Booking`. Compared to previous version:
  - the object is now a combination of a `Booking Request` and a `Confirmed Booking`
  - `bookingRequestCreatedDateTime` and `bookingRequestUpdateddDateTime` removed
  - `documentStatus` renamed to `bookingStatus` and `amendedBookingStatus` added in order to follow the status for an amendment
  - `isAMSACIFilingRequired` removed
  - `commoditySubReference` added to `commodities` inside the `requestedEquipments`
  - `units` and `ISOEquipmentCode` now mandatory fields inside `confirmedEquipments`
  - `transports` renamed to `transportPlan` with the following modifications:
    - all locations are now a `oneOf` instead of an `anyOf`
    - `carrierServiceCode` and `universalServiceCode` added
    - `isUnderShippersResponsibility` removed
    - `advanceManifestFilings` added
    - `requestedChanges` object added
    - `reason` field added
  - `AFD` (AMS Filing Due date) added to `cutOffDateTimeCode` in `shipmentCutOffTimes`
- `BookingRefStatus` object added for the `POST` and `PUT` responses
- `BookingRefCancelledStatus` object added for the cancellation response

**For Bill of Lading**:
- `CreateShippingInstructions` object added in order to create a new Booking. Compared to previous version:
  - `amendToTransportDocument` removed
  - `transportDocumentTypeCode` now mandatory
  - `freightPaymentTermCode`, `originChargesPaymentTermCode`, `destinationChargesPaymentTermCode`, `sendToPlatform`, `invoicePayableAt`, `customsReferences`, `advanceManifestFilings`, `requestedCarrierCertificates` and `requestedCarrierClauses` added
  - `carrierBookingReference` removed from root level - the one in `consignmentItems` must be used
  - `placeOfIssue` structure changed from `anyOf` --> `oneOf`
  - `partyContactDetails` added for contact details regarding the `Transport Document`
  - `documentParties` is now mandatory
- `UpdateShippingInstructions` object added in order to update an existing `Shipping Instructions`
- `ShippingInstructions` object added in order to fetch a `Shipping Instructions`. Compared to previous version:
  - same differences as `CreateShippingInstructions` object plus:
    - `documentStatus` renamed to `shippingInstructionsStatus` and an extra `updatedShippingInstructionsStatus` added to keep track of an update
    - `requestedChanges` object added
    - `reason` field added
- `ShippingInstructionsRefStatus` object added for the `POST` and `PUT` responses
- `ShippingInstructionsRefCancelStatus` object added for the cancellationof an update response
- `TransportDocument` object added in order to fetch a `Transport Document`. Compared to previous version:
  - `transportDocumentStatus` added to indicate the status of the `Transport Document`
  - `transports` and `invociePayableAt` is now mandatory
  - `references` and `customsReferences` added

**Objects modified/added**:
- `References`: `type` (referenceType) modified:
  - `SPO` (Shippers Purchase Order Reference), `CPO` (Consignees Purchase Order Reference) and `SAC` (Shipper Agency Code) added
  - `PO` (Purchase Order), `RUC` (Registro Único del Contribuyente), `DUE` (Declaração Única de Exportação), `CER` (Canadian Export Reporting System), `AES` (Automated Export System) removed
  - no longer an `enum` --> has been changed to be a string for backward compatibility
- `Party`:
  - `taxAndLegalReferences` object added to keep track of tax and legal references
  - `taxReference1` and `taxReference2` removed (use `taxAndLegalReferences` instead)
  - `publicKey` removed as it was not used
  - `partyContactDetails` is no longer mandatory
- `PartyContactDetails` structure changed to require either `phone` or `email` or both. `url` has been removed
- `identifyingCodes`:
  - `DCSAResponsibleAgencyCode` renamed to `codeListProvider` and updated:
    - `EXIS` (Exis Technologies Ltd.), `DID` (Decentralized Identifier), `LEI` (Legal Entity Identifier) removed
    - `NCBH` (NCB Hazcheck), `DCSA` (Digitial Container Shipping Association), `W3C` (World Wide Web Consortium) and `GLEIF` (Global Legal Entity Identifier Foundation) added
    - changed from `enum` --> string for backwards compatibility
- `shipmentLocations`:
  - `location` structure changed from an `anyOf` --> `oneOf`
  - `shipmentLocationTypeCode` renamed to `locationTypeCode` with the following modification:
    - `PSR` (Pre-carriage under shipper’s responsibility) and `ECP` (Empty container pick-up location) removed
- `requestedEquipments`:
  - structure changed so `tareWeight` and `tareWeightUnit` along with `isShipperOwned` are specified via a `oneOf` Shipper Owned or Carrier Owned structure
  - `isNonOperatingReefer`, `activeReeferSettings`, `commodities` and `references` added
  - `commodityRequestedEquipmentLink` removed (this is now renamed to `commoditySubReference` and a carrierProvided value in the commodity-object)
- `commodity`:
  - `HSCode` is now a list of `HSCodes` and hence renamed to `HSCodes`
  - `numberOfPackages` moved into the `outerPackaging` object
  - `references` added
  - `commodityRequestedEquipmentLink` removed
- `outerPackaging` added as a new object containing the following properties: `packageCode`, `imoPackagingCode`, `numberOfPackages`, `description` and a new `DangerousGoods` object to include a list of DG declarations. The `Dangerous Goods` object is not included in the `Shipping Instructions` object
- `Charge` object has renamed `chargeType` into `chargeName`
- `Dangerous Goods` object added with: `InnerPackaging`, `Limits`, `EmergencyContactDetails`
- A specialized version of `DangerousGoods` for `Booking` (`DangerousGoods_BKG`) added and additionally includes `specialCertificateNumber` and `additionalContainerCargoHandling`
- `customsReferences` added as a suplement to `references` for references only related to customs
- `advanceManifestFilings` object added to handle Manifest Filings and if `SHIPPER` or `CARRIER` should file them
- `requestedCarrierClauses` and `requestedCarrierCertificates` added to allow for consumer (Shipper) to specify which Certificates and Clauses to include
- `consignmentItem`:
  - `carrierBookingRefernce` is now mandatory
  - a condition added for `placeOfBLIssue`
  - `weight` and `weightUnit` is now mandatory
  - `HSCode` renamed to `HSCodes` and changed into a list
  - `customsReferences` added
  - `commoditySubReference` added in order to link a `consignmentItem` to a `commodity`
- `cargoItem`:
  - `cargoLineItems` removed and `shippingMarks` moved from `cargoLineItems` to the root of `cargoItem`
  - `numberOfPackages` and `packageCode` moved into the `outerPackaging`
  - `packageNameOnBL` removed
  - `customsReferences` added
- `utilizedTransportEquipments`:
  - weights and volume properties not part of the `Shipping Instruction` - only part of the `Transport Document`
  - `seals` is mandatory
  - `numberOfPackages` removed
  - for the `Shipping Instructions` it is possible to choose between Shipper Owned and Carrier Owned equipment. For the `Transport Document` the entire equipment object is included
  - `customsReferences` added
- `transports` changed from being an array (representing the Tranport Plan) to a single object with the following properties:
  - `PlaceOfReceipt`, `PortOfLoading`, `PortOfDischarge`, `PlaceOfDelivery` and `OnwardInlandRouting` added as locations
  - `plannedArrivalDate` and `plannedDepartureDate`
  - `preCarriageBy` and `onCarriageBy`
  - `vesselName`, `carrierExportVoyageNumber` and `universalExportVoyageReference`

<a name="v210"></a>[Release v2.1.0 (23 December 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/2.1.0)
---
Possibility to link between Commodity and RequestedEquipment, improved support for paper-version of EBL

- Bump [DCSA_Domain to version 2.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v203) (was previously v2.0.2)
- Bump [Location_Domain to version 2.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v203) (was previously v2.0.2)
- `carrierServiceName`, `carrierServiceCode` and `universalServiceReference` added to booking request
- `isAMSACIFilingRequired` moved from booking request to shipment
- `isDestinationFilingRequired` renamed to `isCustomsFilingSubmissionByShipper`
- `customsFilingSystem` added as object but not used
- `valueAddedServiceRequests` renamed to `valueAddedServices`
- `commodityRequestedEquipmentLink` added to the `commodity` in order to link commodity and requestedEquipment
- `requestedEquipmentSizeType` renamed to `ISOEquipmentCode`
- `tareWeight` and `tareWeightUnit` added to `requestedEquipment` in case of SOC
- `requestedEquipmentUnits` renamed to `units`
- description updated for `equipmentReferences`
- `commodityRequestedEquipmentLink` added to the `requestedEquipment` in order to link commodity and requestedEquipment
- `confirmedEquipmentSizeType` renamed to `ISOEquipmentCode`
- `confirmedEquipmentUnits` renamed to `units`
- `numberOfCopies` renamed to `numberOfCopiesWithCharges`
- `numberOfCopiesWithoutCharges` added
- `numberOfOriginals` renamed to `numberOfOriginalsWithCharges`
- `numberOfOriginalsWithoutCharges` added
- `areChargesDisplayedOnOriginals` and `areChargesDisplayedOnCopies` removed
- `displayedNameForPlaceOfReceipt`, `displayedNameForPortOfLoad`, `displayedNameForPortOfDischarge` and `displayedNameForPlaceOfDelivery` changed from string with maxlength of 250 to an array of 5 lines each containing 35 characters (string with maxLength 35)
- `utilizedTransportEquipment` description updated
- `ActiveReeferSettings` removed
- `seal` object updated
  - `sealNumber` renamed to `number`
  - `sealSource` renamed to `source`
  - `sealType` renamed to `type`
  - only `number` remains a required field
- `displayedAddress` in the `Party` object now only allows 5 lines each with a max of 35 characters (string with maxLength 35)
- deprecated `codeListResponsibleAgencyCode` removed
- `DCSA` removed as a `partyFunctionCode`
- `EPI` (EBL Platform Identifier) added as a `partyFunctionCode`
- `partyName` is now a mandaotry field
- `displayedName` removed from `shipmentLocations` (`displayedNameFor...` fields should be used instead)
- `referenceType` renamed to `type` and `referenceValue` renamed to `value` in `reference` object
- `numberOfOriginals` removed from `transportDocument`

<a name="v202"></a>[Release v2.0.2 (5 July 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/2.0.2)
---
Bumps DCSA_Domain and Location_Domain

- Bump [DCSA_Domain to version 2.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v202) (was previously v2.0.1)
- Bump [Location_Domain to version 2.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v202) (was previously v2.0.1)

<a name="v201"></a>[Release v2.0.1 (30 June 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/2.0.1)
---
This version is for `EBL v2.0 Beta 2`

- Bump [DCSA_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v201) (was previously v2.0.0)
- Bump [Location_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v201) (was previously v2.0.0)
- split `bookingShallow`, `booking` and `shipmentSummary` into two so the **core** part can be used in `TransportDocument`
- `BookingShallow` updated:
  - `receiptTypeAtOrigin` and `deliveryTypeAtDestination` now linking to update field in DCSA_Domain
  - `exportVoyageNumber` renamed to `carrierExportVoyageNumber`
  - `universalExportVoyageNumber` added
  - `declaredValue` and `declaredValueCurrency` added
  - `submissionDateTime` removed as field since this is not a shipper controlled value but a carrier controlled one
  - extends the description of `transportDocumentReference`
  - `communicationChannelCode` is now a required field
- `invoicePayableAt` no longer supports `facilityLocation` as a location interface
- `placeOfBLIssue` in `Booking` and `placeOfIssue` in `ShippingInstruction` now only supports `addressLocation` and `UNLocation` location interfaces and example updated
- `packageNameOnBL` added to `CargoItem`
- `carrierBookingReference` description updated on `CargoItem` to better explain requirements when linking to multiple Shipments
- `weight` and `weightUnit` are now required fields on `CargoItem`
- `UtilizedTransportEquipment` updated:
  - `cargoGrossVolume` and `cargoGrossVolumeUnit` added
  - `numberOfPackages` added
  - `cargoItems` removed as a require field
- `DID` (Decentralized Identifier) and `LEI` (Legal Entity Identifier) added to `DCSAResponsibleAgencyCode` (Party identifiers)
- `shipmentLocation` now only supports `addressLocation`, `facilityLocation` and `UNLocation` location interfaces and example is updated
- `referenceType` updated with the following values:
  - `RUC` (Registro Único del Contribuyente), 
  - `DUE` (Declaração Única de Exportação)
  - `CER` (Canadian Export Reporting System)
  - `AES` (Automated Export System)
- `issuerCode` and `issuerCodeListProvider` renamed to `carrierCode` and `carrierCodeListProvider` and set to required
- `issuingParty` added to `TransportDocument` and set to required
- `TransportDocument` updated:
  - `termsAndConditions` added
  - includes `BookingCore` fields (example: `recieptType`, `cargoMovement`, `serviceContractReference`, `declaredValue`, etc...)
  - `transports` (TransportPlan) including `ShipmentLocations`
  - `invoicePayableAt` added as a location object supporting the following Location-Interfaces: `addressLocation` and `unLocationLocation`
- `transports` (TransportPlan) updated:
  - `loadLocation` now supports `addressLocation`, `unLocationLocation` and `facilityLocation` location interfaces and example updated
  - `dischargeLocation` now supports `addressLocation`, `unLocationLocation` and `facilityLocation` location interfaces and example updated
  - `importVoyageNumber` renamed to `carrierImportVoyageNumber`
  - `exportVoyageNumber` renamed to `carrierExportVoyageNumber`
  - `universalImportVoyageReference` and `universalExportVoyageReference` added
  
<a name="v200"></a>[Release v2.0.0 (5 April 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/DOCUMENTATION_DOMAIN/2.0.0)
---
This version has been released together with the APIs for `Booking v1.0 Beta 1` and `EBL v2.0 Beta 1`

- Bump [DCSA_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v200) (was previously v1.0.3)
- Bump [Location_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v200) (was previously v1.0.3)
- Update the Domain metadata
- Rearranging and renaming objects and content:
  - `bookingHeaderNoID` renamed to `bookingShallow` with the following changes:
    - `bookingRequestID`, `bookingRequestDateTime`, `cargoGrossWeightUnit` removed
    - `receiptDeliveryTypeAtOrigin` renamed to `receiptTypeAtOrigin`
    - `receiptDeliveryTypeAtDestination` renamed to `deliveryTypeAtDestination`
    - `paymentTermCode` added
    - `partialLoadAllowed`, `exportDeclarationRequired`, `importLicenseRequired`, `distinationFilingRequired`, `equipmentSubstitutionAllowed` prefixed with `is`
    - `placeOfReceiptPickupDate` removed (it is now a `ShipmentLocation`)
    - `submissionDateTime`, `isAMSACIFilingRequired` added
    - `finalDestinationExpectedArrivalDate` renamed and changed into a range using: `expectedArrivalAtPlaceOfDeliveryStartDate` and `expectedArrivalAtPlaceOfDeliveryEndDate`
    - `paymentTermCode`, `submissionDateTime`, `isAMSACIFilingRequired` added
    - `OTICarrierCode` and `800SeriesCarrierCode` removed (they are not part of the `IdentifyingCode` in the `Party` object)
    - all Boolean operators prefixed with `is`
    - `transportDocumentType` renamed to `transportDocumentTypeCode`
    - `valueAddedServiceRequest` field removed (it is now a list)
    - `invoicePayableAt` removed from `bookingShallow`
    - `exportLicenseIssueDate` and `exportLicenseExpiryDate` both removed and moved into the `Commodity` object
    - `comminicationChannel` renamed to `comminicationChannelCode`
    - `preCarriageModeOfTransportCode` added
    - added `vesselName`, `vesselIMONumber` and `exportVoyageNumber` (they have been moved from `transportDraft` object which is no longer needed)
    - `serviceContractReference` and `submissionDateTime` are now required fields
    - `transportDocumentType`, `bookingRequestDateTime` and `cargoGrossWeightUnit` are no longer a required fields
  - `bookingDeep` object added with all deeply nested objects
  - `bookingSummary`, `bookingRequest`, `bookings`, `booking`, `bookingResponse` and `bookingRefStatus` object added
  - `shipmentSummary`, `shipments` and `shipment` object added
  - `shippingInstructionHeaderNoID` renamed to `shippingInstructionShallow` with the following changes:
    - `amendToTransportDocument` added
    - `transportDocumentType` renamed to `transportDocumentTypeCode`
    - `preCarriageUnderShippersResponsibility` and `invoicePayableAt` removed
    - `isToOrder` added
    - `preCarriageUnderShippersResponsibility` and `invoicePayableAt` removed
    - `isChargesDisplayed` removed and replaced by `areChargesDisplayedOnOriginals` and `areChargesDisplayedOnCopies`
    - `displayedNameForPlaceOfReceipt`, `displayedNameForPortOfLoad``, `displayedNameForPortOfDischarge` and `displayedNameForPlaceOfDelivery` added
  - `shippingInstructionDeep` object added with all deeply nested objects
  - `shippingInstructionSummary`, `shippingInstructionRequest`, `shippingInstruction`, `shippingInstructionResponse` and `shippingInstructionRefStatus` objects added
- `commodity` object updated with `cargoGrossWeightUnit`, `cargoGrossVolume`, `cargoGrossVolumeUnit`, `numberOfPackages`, `exportLicenseIssueDate` and `exportLicenseExpiryDate` added `cargoGrossWeightUnit` as a required field
- `valueAddedServiceRequests` and `valueAddedServiceRequest` added as objects
- `voyage` and `voyages` removed
- `requestedEquipmentType` renamed to `requestedEquipmentSizeType`
- `requestedEquipment` description updated
- `equipmentReferences` added as a list to `requestedEquipment` object containing references to containers
- `confirmedEquipments` and `confirmedEquipment` objects added
- `shipmentCutOffTime` and `shipmentCutOffTimes` object added
- `cargoItems` now has minItems 1
- `cargoItem` description updated
  - `carrierBookingReference` removed
  - `descriptionOfGoods` and `HSCode` removed
- `consignmentItems` added with a minItems of 1
- `consignmentItem` object added with
  - `carrierBookingReference` to allow multiple bookings
  - `weight`, `volume`, `weightUnit`, `volumeUnit`,  `descriptionOfGoods`, `HSCode`, a list of `references` and a list of `cargoItems`
- description of `utilizedTransportEquipment` updated and a minItems of 1 required
- `isShipperOwned` added to `utilizedTransportEquipment` and set as a required field
- `documentParty` now links to a `party` object instead of `partyNoID` (because the field has been renamed)
- `partyContactDetails` moved from `documentParty` -> `party` and made a mandatory field plus added a `url` field
- `partyContactDetails` in `party` object is now a list
- `party` is now a required field on `documentParty`
- `name` is now a mandatory field of `partyContactDetails`
- `DCSAResponsibleAgencyCode` description now updated and `DCSA` added as enum value
- `partyContactDetails` is a required field on `party`
- `nmftaCode` removed from `Party` object
- `codeListResponsibleAgencyCode` removed from `identifyingCode` object
- modified the example of the `location` object in `shipmentLocations`
- `locationType` renamed to `shipmentLocationTypeCode`
- `eventDateTime` added to `shipmentLocation`
- `referenceType` added as local object
- `TransportDocumentRefStatus` added as an object with `transportDocumentReference`, `transportDocumentCreatedDateTime`, `transportDocumentUpdatedDateTime` and `documentStatus`
- `TransportDocumentHeader` renamed to `TransportDocumentRoot` with the following changes:
  - `transportDocumentCreatedDateTime` and `transportDocumentUpdatedDateTime` added
  - `placeOfIssue` removed (is now part of the `TransportDocument` object)
  - `termsAndConditions`, `cargoMovementTypeAtOrigin`, `cargoMovementTypeAtDestination`, `receiptDeliveryTypeAtOrigin`, `receiptDeliveryTypeAtDestination` and `serviceContractReference` removed
  - `numberOfOriginals` added
  - `issueDate` and `issuer` no longer mandatory fields
- `transportDocumentSummary` object created with `transportDocumentRoot`, `shippingInstructionReference` and `documentStatus`
- `transportDocument` object updated:
  - `placeOfIssue` added
  - `transports` removed
- `clauses` renamed to `carrierClauses`
- `paymentTerm` in `charge` object renamed to `paymentTermCode`
- `transportPlanStage`, `transportPlanStageSequenceNumber` and `vesselName` added to the `transport` object
- examples updated for `loadLocation` and `dischargeLocation`
- `transportPlanStage`, `transportPlanSequenceNumber`, `loadLocation`, `dischargeLocation`, `plannedDepartureDate`, `plannedArrivalDate` are now all required fields on `transport`
- `carierVoyageNumber` replaced by `importVoyageNumber` and `exportVoyageNumber` in `Transports`
- `isShipperOwned` on `equipment` object removed
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
