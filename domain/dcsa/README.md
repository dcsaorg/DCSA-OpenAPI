## DCSA Domain

The DCSA Domain is documented on [**DCSA Domain SwaggerHub**](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN).

The primary purpose of this Domain is to specify common components to be reused across DCSA APIs and Domains. This Domain does not define any "complex" objects. Common QueryParameters (limit, cursor) and Headers (Current-Page, Next-Page, ...) are also defined here.

<a name="v200"></a>[Release v2.0.0 (...)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/2.0.0)
---
This version is primarily connected to Booking API

- `800SeriesCarrierCode` type changed from integer `->` string
- `amsFilingDueDate`, `carrierBookingRequestReference`, `confirmationDateTime`, `confirmedEquipmentUnits`, `cutOffDateTime`, `cutOffDateTimeCode`, `eventLocationDateTime`, `isAMSACIFilingRequired`, `submissionDateTime`, `transportPlanStage` and `transportPlanStageSequenceNumber` added as simple types
- `isChargesDisplayed` renamed to `areChargesDispalyed`
- `bookingReqestDateTime` format and example updated
- reordered the location of: `commodityType`, `issueDate`
- `communicationChannel` changed from String `->` enum
- `destinationFilingRequired`, `equipmentSubstitutionAllowed`, `exportDeclarationRequired`, `importLicenseRequired` and `partLoadAllowed` prefixed with `is` since they are Boolean values
- updated description of `displayedName` and `transportDocumentType`
- `incoterms` changed from string `->` enum
- locationType enum updated with new values: `PSR`, `IEL`, `PTP`, `RTP`, `FCD`, `ECP`, `IPA` and `FDE`
- `OTICarrierCode` type changed from integer `->` string
- `partyFunction` updated with new values: `HE`, `SCO` and `BA`
- `paymentTerm` changed from string `->` enum
- `referenceType` updated with new values: `ECR`, `CSI`, `BPR` and `BID`
- `valueAddedServiceRequest` renamed to `valueAddedServiceCode` and changed from string `->` enum

<a name="v110"></a>[Release v1.1.0 (...)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/1.1.0)
---
Initial relase for Booking

- `800SeriesCarrierCode` type changed from integer `->` string
- `amsFilingDueDate`, `carrierBookingRequestReference`, `confirmationDateTime`, `confirmedEquipmentUnits`, `cutOffDateTime`, `cutOffDateTimeCode`, `eventLocationDateTime`, `isAMSACIFilingRequired`, `submissionDateTime`, `transportPlanStage`, `transportPlanStageSequenceNumber` added
- `bookingRequestDateTime` format fixed and example added
- `communicationChannel` changed from String -> enum
- `destinationFilingRequired`, `equipmentSubstitutionAllowed`, `exportDeclarationRequired`, `importLicenseRequired` and `partLoadAllowed` prefixed with `is` since they are Boolean values
- `exportLicenseIssueDate`, `exportLicenseExpiryDate`, `plannedArrivalDate` and `plannedDepartureDate`, `errorDateTime` format fixed
- `incoterms` changed from string `->` enum
- added the following values to `locationType` enum:
  - `PSR` (Pre-carriage under shipper’s responsibility)
  - `IEL` (Container intermediate export stop off location)
  - `PTP` (Prohibited transshipment port)
  - `RTP` (Requested transshipment port)
  - `FCD` (Full container drop-off location)
  - `ECP` (Empty container pick-up date and time)
  - `IPA` (IPA  Invoice payable at)
  - `FDE` (Final destination)
- `OTICarrierCode` type changed from integer `->` string
- `partyFunction` updated with new values:
  - `HE` (Carrier booking office (transportation office))
  - `SCO` (Service contract owner - Defined by DCSA)
  - `BA` (Booking Agency)
- `paymentTerm` changed from string `->` enum and renamed to `paymentTermCode`
- `referenceType` updated with new values:
  - `ECR` (Empty container release reference)
  - `CSI` (Customer shipment ID)
  - `BPR` (Booking party reference number)
  - `BID` (Booking Request ID)
- `valueAddedServiceRequest` renamed to `valueAddedServiceCode` and changed from string `->` enum
- `transportDocumentType` description updated to include enum values
- `valueAddedServiceRequest` renamed to `valueAddedServiceCode` and change from text(30) `->` enum

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
