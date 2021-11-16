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
