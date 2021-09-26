## DCSA Domain

The DCSA Domain is documented on [**DCSA TNT SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_TNT).

The primary purpose of this Domain is to specify common components to be reused across DCSA APIs and Domains. This Domain does not define any "complex" objects. Common QueryParameters (limit, cursor) and Headers (Current-Page, Next-Page, ...) are also defined here.

<a name="v110"></a>[Release v1.1.0 (...)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/1.1.0)
---
This version is primarily connected to Booking API

- `800SeriesCarrierCode` type changed from integer `->` string
- `amsFilingDueDate`, `bookingAcknowledgementID`, `confirmationDateTime`, `confirmedEquipmentUnits`, `cutOffDateTime`, `cutOffDateTimeCode`, `eventLocationDateTime`, `submissionDateTime`, `transportPlanStage` and `transportPlanStageSequenceNumber` added as simple types
- reordered the location of: `commodityType`, `issueDate`
- `destinationFilingRequired`, `equipmentSubstitutionAllowed`, `exportDeclarationRequired`, `importLicenseRequired` and `partLoadAllowed` prefixed with `is` since they are Boolean values
- updated description of `displayedName` and `transportDocumentType`
- `incoterms` changed from string `->` enum
- locationType enum updated with new values: `PSR`, `IEL`, `PRP`, `RTP`, `FCD`, `ECP`, `IPA` and `FDE`
- `OTICarrierCode` type changed from integer `->` string
- `partyFunction` updated with new values: `HE`, `SCO` and `BA`
- `paymentTerm` changed from string `->` enum
- `referenceType` updated with new values: `ECR`, `CSI`, `BPR` and `BID`
- `valueAddedServiceRequest` renamed to `valueAddedServiceCode` and changed from string `->` enum
- `RAMP` added as `facilityTypeCode`

<a name="v103"></a>[Release v1.0.3 (...)](https://app.swaggerhub.com/domains-docs/dcsaorg/DCSA_DOMAIN/1.0.3)
---
- sort queryParameter added

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
