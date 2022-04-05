## DCSA Domain

The DCSA Domain is documented on [**DCSA Domain SwaggerHub**](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN).

The primary purpose of this Domain is to specify common components to be reused across DCSA APIs and Domains. This Domain does not define any "complex" objects. Common QueryParameters (limit, cursor) and Headers (Current-Page, Next-Page, ...) are also defined here.

<a name="v200"></a>[Release v2.0.0 (05 April 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/2.0.0)
---
The APIs for Booking v1.0 Beta 1 and EBL v2.0 Beta 1 both use this version of the Domain

**NB**: Not updated yet...

- `800SeriesCarrierCode`, `confirmationDateTime`, `isChargesDisplayed`, `numberOfOriginals` removed
- `amsFilingDueDate`, `areChargesDisplayedOnOriginals`, `areChargesDisplayedOnCopies`, `bookingReqestUpdatedDateTime`, `carrierBookingRequestReference`, `chargeTypeCode`, `commodityType`, `confirmedEquipmentUnits`, `cutOffDateTime`, `cutOffDateTimeCode`, `eventLocationDateTime`, `expectedArrivalDateAtFinalDestinationStart`, `expectedArrivalDateAtFinalDestinationEnd`, `isAMSACIFilingRequired`, `issuedNumberOfOriginals`, `isToOrder`, `requestedNumberOfOriginals`, `shipmentCreatedDateTime`, `shipmentUpdatedDateTime`, `shippingInstructionCreatedDateTime`, `shippingInstructionUpdatedDateTime`, `submissionDateTime`, `transportDocumentCreatedDateTime`, `transportDocumentUpdatedDateTime`, `transportPlanStage`, `transportPlanStageSequenceNumber`, `vesselOperatorCarrierSMDGCode` added as simple types
- `destinationFilingRequired`, `equipmentSubstitutionAllowed`, `exportDeclarationRequired`, `importLicenseRequired` and `partLoadAllowed` prefixed with `is` since they are Boolean values
- `bookingReqestDateTime` renamed `bookingReqestCreatedDateTime` and format + description fixed
- `commodityType` changed from length 20 `->` 550
- `communicationChannel` renamed to `communicationChannelCode` and changed from String -> enum
- `delayReasonCode`description updated to reflect that Category 5 SMDG codes are not supported
- documentStatus enum updated with new values:
  - PENC (Pending Confirmation)
  - CONF (Confirmed)
  - CANC (Cancelled)
  - CMPL (Completed)
- `email` example updated
- `exportLicenseIssueDate`, `exportLicenseExpiryDate`, `plannedArrivalDate` and `plannedDepartureDate`, `errorDateTime` format fixed
- `incoterms` changed from string `->` enum
- `locationType` renamed to `shipmentLocationType` and added the following enum values:
  - `PSR` (Pre-carriage under shipper’s responsibility)
  - `IEL` (Container intermediate export stop off location)
  - `PTP` (Prohibited transshipment port)
  - `RTP` (Requested transshipment port)
  - `FCD` (Full container drop-off location)
  - `ECP` (Empty container pick-up date and time)
  - `IPA` (IPA  Invoice payable at)
  - `FDE` (Final destination)
- `OTICarrierCode` type changed from integer `->` string
- `packageCode` example corrected 5H `->` 5H4
- `partyFunction` updated with new values:
  - `HE` (Carrier booking office (transportation office))
  - `SCO` (Service contract owner - Defined by DCSA)
  - `BA` (Booking Agency)
  - `CA` (Carrier)
- `paymentTerm` changed from string `->` enum and renamed to `paymentTermCode`
- `referenceType` updated with new values:
  - `ECR` (Empty container release reference)
  - `CSI` (Customer shipment ID)
  - `BPR` (Booking party reference number)
  - `BID` (Booking Request ID)
- GitHub link added to: `referenceType`
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
