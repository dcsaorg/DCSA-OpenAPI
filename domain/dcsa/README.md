## DCSA Domain

The DCSA Domain is documented on [**DCSA Domain SwaggerHub**](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN).

The primary purpose of this Domain is to specify common components to be reused across DCSA APIs and Domains. This Domain does not define any "complex" objects. Common QueryParameters (limit, cursor) and Headers (Current-Page, Next-Page, ...) are also defined here.

<a name="v311"></a>[Release v3.1.1 (Not released)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/3.1.1)
---
Minor fixes

- `latitude` and `longitude` regEx and example modified

<a name="v310"></a>[Release v3.1.0 (28 December 2023)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/3.1.0)
---
Released as part of Booking v2.0.0 Beta 1 and EBL v3.0.0 Beta 1 release. Many new properties for DG (Dangerous Goods) have been added. Many properties previously specified with `enum` values have been changed to only be a string in order to be better backward compatible. External links to other standardbodies have been updated. Many descriptions updated in order to be more clear.

- following properties have been added: `additionalContainerCargoHandling`, `codedVariantList`, `competentAuthorityApproval`, `containerInspectionBodyIdentifier`, `containerInspectionCertificateNumber`, `deliveryInstructionReference`, `deliveryOrderReference`, `destinationChargesPaymentTermCode`, `dgGrossWeight`, `dgVolume`, `dgRemarks`, `EMSNumber`, `endOfHoldingTime`, `flashPoint`, `freightPaymentTermCode`, `fumigationDateTime`, `imoClass`, `inhalationZone`, `isControlledAtmosphereRequired`, `isCompetentAuthorityApprovalProvided`, `isContainerInspectionCertificateProvided`, `isEmptyUncleanedResidue`, `isExceptedQuantity`, `isHot`, `isLimitedQuantity`, `isMarinePollutant`, `isNonOperatingReefer`, `isReportableQuantity`, `isSalvagePackings`, `isWaste`, `naNumber`, `netExplosiveContent`, `netExplosiveContentUnit`, `netWeight`, `netWeightUnit`, `originChargesPaymentTermCode`, `packingGroup`, `properShippingName`, `sadt`, `sapt`, `sendToPlatform`, `shippingMark`, `specialCertificateNumber`, `subsidiaryRisk`, `technicalName`, `transportControlTemperature`, `transportEmergencyTemperature`, `unNumber`, `volumeUnitDG`
- following descriptions have been updated: `amendToTransportDocument`, `bargeFlag`, `commodityType`, `countryCode`, `currencyCode`, `declaredValueCurrency`, `equipmentReference`, `etaAtPlaceOfDeliveryDateTime`, `etaAtPortOfDischargeDateTime`, `HSCode`, `ISOEquipmentCode`, `issueDate`, `isToOrder`, `numberOfCopiesWithCharges`, `numberOfCopiesWithoutCharges`, `numberOfOriginalsWithCharges`, `numberOfOriginalsWithoutCharges`, `paymentTermCode`, `receivedForShipmentDate`, `shippedOnBoardDate`, `UNLocationCode`, `vesselFlag`, `Api-Version-Major` (header)
- `bookingRequestCreatedDateTime` renamed to `bookingRequestDateTime`
- `bookingRequestUpdatedDateTime` renamed to `bookingUpdatedDateTime`
- `cargoLineItemID`, `carrierInformationToConsignee`, `commodityRequestedEquipmentLink`, `customsFilingSystem`, `preCarriageUnderShippersResponsibility`, `referenceType`, `transportLocationType` deleted
- following properties are no longer `enum` but now simple strings: `cargoMovementTypeAtOrigin`, `cargoMovementTypeAtDestination`, `communicationChannelCode`, `cutOffDateTimeCode`
- `carrierCode` regEx pattern corrected
- `chargeType` rename to `chargeName` and now accepts a maxLength of 50 instead of 20
- `cityName`, `country`, `latitude`, `longitude`, `postCode`, `stateRegion`, `streetName`, `streetNumber` example improved
- `clauseContent` maxLength set to 20000
- added a new regEx to `customsImportDeclarationProcedure`
- `cutOffDateTimeCode` now limited to 3 characters
- `descriptionOfGoods` now limited to 5000 characters
- `email` regEx pattern modified
- `incoTerms` description updated and property limited to 3 characters
- `modeOfTransport` no longer an enum and now limited to 50 characters
- `numberOfPackages` maximum value set to 99999
- `packageCode` regEx modified and description updated
- `partyFunction` no longer an enum
  - `ENR` (Envelope Receiver) value removed
  - `END` (Endorsee Party) added
  - maxLength set to 3 characters
- `requestedEquipmentUnits` changed from float to integer and minimum value changed from 0 --> 1. Description also changed
- `returnDescription` regEx pattern added
- `sealSource` and `sealType` no longer an enum and now limited to 5 characters
- `shipmentLocationTypeCode` no longer an enum and now limited to 3 characters
- `shippingInstructionCreatedDateTime` renamed to `shippingInstructionsCreatedDateTime` and description updated
- `shippingInstructionReference` renamed to `shippingInstructionsReference` and description updated
- `shippingMarks` maxLength set to 500 and example added
- `termsAndConditions` now limited to 50000 characters and description modified
- `universalVoyageReference`, `universalExportVoyageReference` and `universalImportVoyageReference` regEx modified to also include `R` (Roundtrip)
- `LTR` (Litre) removed from allowed values in `volumeUnit`
 
<a name="v300"></a>[Release v3.0.0 (31 March 2023)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/3.0.0)
---
Released as part of Track & Trace 3.0.0 Beta 1 release. Contains Booking and eBL upodates as well. A lot of validation rules have been added

- validation rules have been added to many attributes:
  - `addressLineNumber` must be >=1
  - `addressName`, `amendToTransportDocument`, `bookingChannelReference`, `calculationBasis`, `cargoLineItemID`, `carrierBookingReference`, `carrierBookingRequestReference`, `carrierCode`, `carrierExportVoyageNumber`, `carrierImportVoyageNumber`, `carrierLocationReference`, `carrierServiceCode`, `carrierServiceName`, `carrierVoyageNumber`, `chargeType`, `cityName`, `clauseContent`, `commodityType`, `contractQuotationReference`, `country`, `delayReasonCode`, `descriptionOfGoods`, `documentReferenceNumber`, `equipmentReference`, `eventComment`, `exportDeclarationReference`, `exportVoyageNumber`, `facilityCode`, `floot`, `importLicenseReference`, `importVoyageNumber`, `ISOEquipmentCode`, `locationName`, `nmftaCode`, `packageCode`, `packageCodeOnBL`, `partyName`, `portVisitReference`, `shippingInstructionReference`, `transportCallReference`, `transportDocumentReference`, `UNLocationName`, `url`, `vesselCallSign`, `vesselCallSignNumber`, `vesselName`, `vesselOperatorCarrierCode`, `vesselOperatorSMDGLinerCode` cannot start or end with a ` ` (space)
  - `airExchangeSetpoint`, `numberOfCopies`, `numberOfCopiesWithCharges`, `numberOfCopiesWithoutCharges`, `numberOfOriginalsWithCharges`, `numberOfOriginalsWithoutCharges`, `numberOfRiderPages`, `quantity`, `unitPrice`, `weight` must be >=0
  - `amendToTransportDocument` example added
  - `cargoGrossVolume`, `cargoGrossWeight`, `curencyAmount`, `declaredValue`, `tareWeight`, `vesselLOA`, `vesselWidth`, `volume` must be >0
  - `co2Setpoint`, `humiditySetpoint`, `o2Setpoint` must be a value >=0 and <=100
  - `confirmedEquipmentUnits`, `numberOfPackages`, `requestedNumberOfOriginals` must be >= 1
  - `currencyCode` and `declaredValueCurrency` must match 3 letters ([A-Z])
  - `email` must contain `@`
  - `HSCode` must be a string with 6-10 digits
  - `vesselFlag` must match 2 letters ([A-Z])
  - `vesselIMONumber` must be 7 digits
- `arrivalNoticeReference`, `bargeCallSignNumber`, `bargeFlag`, `bargeName`, `bargeOperatorCarrierCode` and `bargeOperatorCarrierCodeListProvider`, `carrierInformationToConsignee`, `contactName`, `contactPhone`, `containerDepositAmount`, `countryCode`, `customsImportDeclarationProcedure`, `demurrageAmount`, `demurrageFreetime`, `detentionAmount`, `detentionFreetime`, `equipmentSetpointAmbientTemperature`, `equipmentSetpointTemperature`, `equipmentSetpointO2`, `equipmentSetpointCo2`, `equipmentSetpointHumidity`, `equipmentSetpointAirExchange`, `etaAtPlaceOfDeliveryDateTime`, `etaAtPortOfDischargeDateTime`, `etaAtPortOfDischargeDateTime`, `firmsCode`, `isDrainholesOpen`, `itNumber`, `measuredAmbientTemperature`, `measuredTemperature`, `measuredO2`, `measuredCo2`, `measuredHumidity`, `measuredAirExchange`, `returnDescription`, `storageAmount` added
- `areChargesDisplayedOnOriginals`, `areChargesDisplayedOnCopies`, `bookingRequestID`, `cargoItemID`, `carrierID`, `chargeID`, `clauseID`, `humidityMax`, `humidityMin`, `issuedNumberOfOriginals`, `issuedNumberOfOriginalsWithCharges`, `issuedNumberOfOriginalsWithoutCharges`, `nitrogenSetpoint`, `otherFacility`, `OTICarrierCode`, `partyID`, `referenceID`, `scheduleID`, `sealID`, `serviceID`, `shipmentEquipmentID`, `shipmentID`, `temperatureMax`, `temperatureMin`, `transportCallID`, `transportID`, `ventilationMax`, `ventilationMin`, `voyageID` removed
- `cargoLineItemID`, `clauseContent`, `commodityType`, `contractQuotationReference`, `cutOffDateTimeCode`, `documentReferenceNumber`, `referenceValue`, `serviceContractReference`, `stateRegion`, `storageAmount`, `transportDocumentReference` example added
- `carrierCodeListProvider` description updated
- `carrierImportVoyageNumber`, `carrierImportVoyageNumber` and `carrierVoyageNumber` description changed to be **carrier-specific** instead of **operator-specific**
- `chargeTypeCode` maxLength changed from 3 --> 4
- `customsFilingSystem` added (will be changed to advanceManifestFiling in future)
- `AFD` (AMS Filing Due date) removed from cutOffDateTimeCode
- `equipmentReference` maxLength changed from 15 --> 11 and description updated
- `COYA` no longer part of `facilityTypeCode` nor `facilityTypeCodeTRN`
- `isBulbMode`, `isColdTreatment`, `isElectronic` example updated and default value removed
- `isCustomsFilingSubmissionByShipper` updated (will be changed in future)
- `isGeneratorSetRequired`, `isHighValueCargo`, `isPreCoolingRequired` default value removed
- `locationReference` renamed to `carrierLocationReference`
- `name` renamed to `contactName`
- `phone` renamed to `contactPhone`
- `requestedEquipmentUnits` type changed from Integer --> Number (float), example and description updated to allow partial containers as part of the requestedEquipment
- `temperatureSetpoint` specified as float
- `temperatureUnit` description updated
- `universalServiceReference`, `universalExportVoyageReference`, `universalVoyageReference` regular expression pattern updated
- `valueAddedServiceCode` removed
- `LTR` (Litre) has been added to `volumeUnit`
- `cursor` and `offset` header parameter removed

<a name="v203"></a>[Release v2.0.3 (23 December 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/2.0.3)
---
Updated as part of new Track & Trace release 

- `addressLine` and `displayedName` lengths changed from 250 -> 35 since it needs to comply with printed B/L text field lengths
- `areChargesDisplayedOnOriginals` and `areChargesDisplayedOnCopies` removed
- `airExchangeSetpoint`, `airExchangeUnit`, `carrierServiceName`, `co2Setpoint`, `commodityRequestedEquipmentLink`, `isBulbMode`, `isCargoProbe1Required`, `isCargoProbe2Required`, `isCargoProbe3Required`, `isCargoProbe4Required`, `isColdTreatmentRequired`, `isGeneratorSetRequired`, `isHighValueCargo`, `isPreCoolingRequired`, `isVentilationOpen`, `humiditySetpoint`, `nitrogenSetpoint`, `o2Setpoint`, `reeferExtraMaterial`, `reeferProductName` and `temperatureSetpoint` added
- `CUS` (Customs Filing Due Date) added to `cutOffDateTimeCodes`
- `humidityMin`, `humidityMax`, `temperatureMin` and `temperatureMax` removed
- `dateRange` and `startDate` descriptions updated to include link to Wikipedia
- `facilityTypeCode` updated `BOCR` (Border crossing) --> `BORD` (Border) and added `WAYP` (Waypoint)
- `facilityTypeCodeTRN` (...TNT = Track & Trace version) description updated and aligned with `facilityTypeCode`
- `isDestinationFilingRequired` renamed to `isCustomsFilingSubmissionByShipper`
- `issedNumberOfOriginals` removed
- `issedNumberOfOriginalsWithCharges` and `issedNumberOfOriginalsWithoutCharges` added
- `latitude` and `longitude` now indluce a regEx for validation
- `numberOfCopiesWithCharges`, `numberOfCopiesWithoutCharges`, `numberOfOriginalsWithCharges` and `numberOfOriginalsWithoutCharges` added
- `ENR` (Envelope Receiver) added as new partyFunctionCode `EBL` (EBL Solution Provider) removed
- `RUC`, `DUE`, `CER` and `AES` added to the `ReferenceType` enum
- `shippedOnBoardDate` added
- marked patterns as strings
- improved the description for `weightUnit` and `sort` query parameter
- pagination-header descriptions updated (`Current-Page`, `Next-Page`, `Prev-Page`, `Last-Page` and `First-Page`)
- `offset` added as query parameter
- `UNLocationCode` minLength of 5 added, description updated

<a name="v202"></a>[Release v2.0.2 (5 July 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/2.0.2)
---
Minor fix

- `VesselDraft` description and example updated to be more realistic

<a name="v201"></a>[Release v2.0.1 (30 June 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/2.0.1)
---
The API for EBL v2.0 Beta 2 uses this version of the Domain

- description updated for `cargoMovementTypeAtOrigin`, `cargoMovementTypeAtDestination`, `carrierServiceCode`, `facilityCodeListProvider`, `ventilationMax`, `ventilationMin`
- `carrierImportVoyageNumber`, `carrierExportVoyageNumber`, `dimensionUnit`, `exportUniversalVoyageReference`, `importUniversalVoyageReference`, `locationReference`, `packageNameOnBL`, `portVisitReference`, `transportCallReference`, `universalServiceReference`, `universalImportVoyageReference`, `universalExportVoyageReference`, `universalVoyageReference`, `vesselCallSign`, `vesselLOA`, `vesselDraft`, `vesselType`, `vesselWidth` added as a simple type
- `issuerCode` and `issuerCodeListProvider` renamed to `carrierCode` and `carrierCodeListProvider`
- `delayReasonCode` updated with newest link to `SMDG`
- `facilityTypeCode` description updated and `ANCH`(Anchorage) added to enum values
- `locationName` example updated
- `postCode` maxLength changed to 50
- `receiptDeliveryTypeAtOrigin` renamed to `receiptTypeAtOrigin` and description updated
- `receiptDeliveryTypeAtDestination` renamed to `deliveryTypeAtDestination` and description updated
- `shipmentCreatedDateTime` description updated
- `IPA` (Invoice Payable At) removed as enum value on `shipmentLocationTypeCode`
- `ventilationMax` and `ventilationMin` description updated
- `vesselOperatorCarrierSMDGCode` renamed to `vesselOperatorSMDGLinerCode`
- `isShippedOnboardType` renamed to `isShippedOnBoardType`
- `volumeUnit` updated - now aligned with UNECE: `MTQ` and `FTQ`

<a name="v200"></a>[Release v2.0.0 (05 April 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/2.0.0)
---
The APIs for Booking v1.0 Beta 1 and EBL v2.0 Beta 1 both use this version of the Domain

- Domain description updated
- `800SeriesCarrierCode`, `cargoGrossWeightUnit`, `confirmationDateTime`, `isChargesDisplayed`, `numberOfOriginals` removed
- `addressLineNumber`, `currencyAmount`, `numberOfCopies`, `numberOfPackages`, `numberOfRiderPages`, `transportCallSequenceNumber` qualified with format `int32`
- `amendToTransportDocument`, `amsFilingDueDate`, `areChargesDisplayedOnOriginals`, `areChargesDisplayedOnCopies`, `bookingReqestUpdatedDateTime`, `cargoGrossVolume`, `carrierBookingRequestReference`, `chargeTypeCode`, `confirmedEquipmentUnits`, `cutOffDateTime`, `cutOffDateTimeCode`, `eventLocationDateTime`, `expectedArrivalAtPlaceOfDeliveryStartDate`, `expectedArrivalAtPlaceOfDeliveryEndDate`, `isAMSACIFilingRequired`, `issuedNumberOfOriginals`, `isToOrder`, `shipmentCreatedDateTime`, `shipmentLocationTypeCode`, `shipmentUpdatedDateTime`, `shippingInstructionCreatedDateTime`, `shippingInstructionUpdatedDateTime`, `submissionDateTime`, `transportDocumentCreatedDateTime`, `transportDocumentUpdatedDateTime`, `transportPlanStage`, `transportPlanStageSequenceNumber`, `url`, `vesselOperatorCarrierSMDGCode` added as simple types
- `cargoGrossWeight`, `declaredValue`, `humidityMax`, `humidityMin`, `quantity`, `tareWeight`, `temperatureMax`, `temperatureMin`, `unitPrice`, `ventilationMax`, `ventilationMin`, `volume`, `weight` qualified with format `float`
- `chargeType` description updated
- `commodityType` changed from length 20 `->` 550
- `communicationChannel` renamed to `communicationChannelCode` and changed from String -> enum
- `issueDate` moved
- `delayReasonCode`description updated to reflect that Category 5 SMDG codes are not supported
- `destinationFilingRequired`, `equipmentSubstitutionAllowed`, `exportDeclarationRequired`, `importLicenseRequired` and `partialLoadAllowed` prefixed with `is` since they are Boolean values
- `bookingReqestDateTime` renamed `bookingReqestCreatedDateTime` and format + description fixed
- documentStatus enum updated with new values:
  - `PENC` (Pending Confirmation)
  - `CONF` (Confirmed)
  - `CANC` (Cancelled)
  - `CMPL` (Completed)
- `email` example updated
- `exportLicenseIssueDate`, `exportLicenseExpiryDate`, `plannedArrivalDate` and `plannedDepartureDate`, `errorDateTime` format fixed
- `incoterms` changed from string `->` enum
- `isDestinationFilingRequired` and `issuerCode` description updated
- `locationType` renamed to `shipmentLocationType` and added the following enum values:
  - `PSR` (Pre-carriage under shipper’s responsibility)
  - `IEL` (Container intermediate export stop off location)
  - `PTP` (Prohibited transshipment port)
  - `RTP` (Requested transshipment port)
  - `FCD` (Full container drop-off location)
  - `ECP` (Empty container pick-up date and time)
  - `IPA` (IPA  Invoice payable at)
  - `FDE` (Final destination)
- `numberOfOriginals` renamed to `requestedNumberOfOriginals`
- `OTICarrierCode` type changed from integer `->` string
- `packageCode` example corrected 5H `->` 5H4
- `partyFunction` updated with new values:
  - `HE` (Carrier booking office (transportation office))
  - `SCO` (Service contract owner - Defined by DCSA)
  - `BA` (Booking Agency)
  - `EBL` (EBL Solution Provider)
- `paymentTerm` changed from string `->` enum and renamed to `paymentTermCode`
- `referenceType` updated description and new values:
  - `ECR` (Empty container release reference)
  - `CSI` (Customer shipment ID)
  - `BPR` (Booking party reference number)
  - `BID` (Booking Request ID)
- GitHub link added to: `referenceType`
- `shippingInstructionID` renamed to `shippingInstructionReference` and example updated
- `termsAndConditions` description updated
- fixed wrongly referenced `transportPlanSequenceNumber` required field should be `transportPlanStageSequenceNumber`
- `transportDocumentType` description updated to include enum values and renamed to `transportDocumentTypeCode`
- `valueAddedServiceRequest` renamed to `valueAddedServiceCode` and change from string `->` enum
- `errors` and `error` object removed as they are in the <a href="https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/error">Error Domain</a>

<a name="v103"></a>[Release v1.0.3 (28 October 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/1.0.3)
---
This version is used by T&T v2.2 and OVS + JIT

- renamed `bookingChannelReferenceNumber` -> `bookingChannelReference`
- `exportVoyageNumber` and `importVoyageNumber` added as simpletypes
- `RAMP` added as `facilityTypeCode`
- `ISOEquipmentCode` example added
- `EQ` added as `referenceType`
- `UnLocationCode` example updated - changed `USNYC` -> `FRPAR`
- reordered all parameters to be alphabetically
- `sort` added as a queryparameter

<a name="v102"></a>[Release v1.0.2 (25 August 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/1.0.2)
---
- Update UUID example values
- Remove incorrect character in ServiceID format definition

<a name="v101"></a>[Release v1.0.1 (02 August 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/1.0.1)
---
- Update latitude and logitue examples to comply with maxLength
- Update VesselIMONumber to a valid value

<a name="v100"></a>[Release v1.0.0 (30 June 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/1.0.0)
---
- Domain created and released
