Release v1.1.0 (...)
-------------------------------
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

Release v1.0.2 (25 August 2021)
-------------------------------
- Update UUID example values
- Remove incorrect character in ServiceID format definition

Release v1.0.1 (02 August 2021)
-------------------------------
- Update latitude and logitue examples to comply with maxLength
- Update VesselIMONumber to a valid value

Release v1.0.0 (30 June 2021)
-----------------------------
- Domain created and released
