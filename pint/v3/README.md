### Platform Interoperability (PINT) API

The DCSA Platform Interoperability API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL_PINT).

Publications related to the PINT API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website

<a name="v300"></a>[Release v3.0.0 (...)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_PINT/3.0.0)
---
This is a moving target and will be updated as soon as the version is published

<a name="v300B20240830"></a>[Release v3.0.0 Beta 20240830 (30 of August 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_PINT/3.0.0-Beta-20240830)
---
Snapshot as of 30 of August 2024 for EBL Platform Interoperability 3.0.0 Beta.
## Key changes
- `errorCodeMessage` maxLength updated from 200 --> 5000 in `DetailedError` object
- `partyName` maxLength changed from 100 --> 70 in `TransactionParty` object
- IdentifyingCode object changes:
  - `EU` added to the `codeListProvider` values
  - `EORI` added to `codeListName` values
  - `partyCode` maxLength changed from 100 --> 150
- `Transport Document` updated

## Transport Document changes
- `numberOfCopiesWithCharges`, `numberOfCopiesWithoutCharges`, `numberOfOriginalsWithCharges` and `numberOfOriginalsWithoutCharges` descriptions updated (conditions removed)
- `displayedShippedOnBoardReceivedForShipment` added
- `carrierCodeListProvider` description for `NMFTA` is updated
- `issuingParty` moved from root level --> `documentParties`
- `notifyParties` added as a `documentParty` (split from `partyFunctionCode` in "Other Document Parties")
- `routingOfConsignmentCountries` added
- `name` maxLength changed from 100 --> 35 in `PartyContactDetail` object
- `Schedule B` changed to `SCHEDULE B` in type in `NationalCommodityCode` object and a typo was fixed in the description
- `nationalCommodityCodes` added on `CargoItem` level
- `woodDeclaration` pseudoEnum values changed to CAPITALIZATION
- `isCompetentAuthorityApprovalProvided` renamed to `isCompetentAuthorityApprovalRequired` in Dangerous Goods (DG)
- `shippingMarks` description updated
- `sealSource` description updated (condition added)
- `Address` and `PartyAddress` objects updates:
  - `street` maxLength changed from 100 --> 70
  - `PObox` added as property
  - `city` maxLength changed from 65 --> 35
- `partyFunctionCode` values updated (`NofityParty` values removed)
- `Shipper` object changes:
  - `partyName` maxLength changed from 100 --> 70
  - `typeOfPerson` added
  - `displayedAddress` maxItems changed from 999 --> 6 and a condition has been added for physical BLs
  - `shippersReference` renamed to `reference`
  - `shippersPurchaseOrderReference` renamed to `purchaseOrderReference`
- `Consignee` object changes:
  - `partyName` maxLength changed from 100 --> 70
  - `typeOfPerson` added
  - `displayedAddress` maxItems changed from 999 --> 6 and a condition has been added for physical BLs
  - `consigneesReference` renamed to `reference`
  - `consigneesPurchaseOrderReference` renamed to `purchaseOrderReference`
- `Endorsee` object changes:
  - `partyName` maxLength changed from 100 --> 70
  - `displayedAddress` maxItems changed from 999 --> 6 and a condition has been added for physical BLs
- `CarriersAgentAtDestination` object changes:
  - `partyName` maxLength changed from 100 --> 70
- `NotifyParty` object added
- `Party` and `IssuingParty` objects changes:
  - `partyName` maxLength changed from 100 --> 70

<a name="v300B20240816"></a>[Release v3.0.0 Beta 20240816 (16 of August 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_PINT/3.0.0-Beta-20240816)
---
Snapshot as of 16 of August 2024 for EBL Platform Interoperability 3.0.0 Beta.
## Key changes
- `Transport Document` updated

## Transport Document changes
- `declaredValue` description updated
- `maxLength=100` changed to `maxLength=35` (in order to be EDI compatible):
  - in `shippersReference` in `Shipper` party object
  - in `shippersPurchaseOrderReference` in `Shipper` party object
  - in `consigneesReference` in `Consignee` party object
  - in `consigneesPurchaseOrderReference` in `Consignee` party object
  - in `reference` in `Party` object
  - in `value` in `TaxLegalReference` object
  - in `value` in `Reference` object (which also has a `pattern` added)
- `CustomReference` object has the following changes:
  - `maxLength=100` changed to `maxLength=35` for the `value` property
  - the `value` property has been renamed to `values` and is now a list of values instead of a single value

<a name="v300B20240726"></a>[Release v3.0.0 Beta 20240726 (26 of July 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_PINT/3.0.0-Beta-20240726)
---
Snapshot as of 26 of July 2024 for EBL Platform Interoperability 3.0.0 Beta.
## Key changes
- `Reciever validation` endPoint added
- `Transport Document` updated

## EBL PINT changes
- multiple description changes (typos)
- Added `Reciever validation` endPoint
- `DocumentChecksum` description modified
- `ReceiverValidationResponse` object added
- `IssuanceManifest` object added
- `EnvelopeTransferChainEntry` object modified
  - `issuanceManifestSignedContent` added
  - `eBLVisualisationByCarrier` removed
  - no longer contains an `allOf`
- `eblPlatform` pattern improved and description modified (link updated)
- `name` in `DocumentMetadata` got a pattern
- `Transaction` object modified
  - example added to `action`
  - pattern added to `comments`

## Transport Document changes
- `placeOfIssue` no longer defined inline but via a $ref to `PlaceOfIssue` object
- `streetNumber` is no longer a mandatory field in the `Address` nor `PartyAddress` objects
- `shippersReference` and `shippersPurchaseOrderReference` added to `Shipper` object
- `consigneesReference` and `consigneesPurchaseOrderReference` added to `Consignee` object
- `reference` added to `Party` object
- values removed from `type` in `reference` (`FF`, `SI`, `SPO`, `CPO`, `AAO`, `ECR`, `CSI`, `BPR`, `BID` and `SAC` all removed and `AKG` added)
- `nationalCommodityCodes` added to `ConsignmentItem`
- `NationalCommodityCode` object added
- `woodDeclaration` added to `OuterPackaging`
- fixed typo in required fields of `Transports` (`vesselVoyage` --> `vesselVoyages`)
- `MULTIMODAL` added as a `Mode of Transport` to `preCarriageBy` and `onCarriageBy`
- `PlaceOfReceipt`, `PortOfLoading`, `PortOfDischarge`, `PlaceOfDelivery` and `OnwardInlandRouting` objects changed from using a `oneOf` into an object where all location types are optional and can be used at the same time

<a name="v300B2"></a>[Release v3.0.0 Beta 2 (12 April 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_PINT/3.0.0-Beta-2)
---
To be updated
