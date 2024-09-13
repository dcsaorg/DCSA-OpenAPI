### Bill of Lading Issuance (EBL_ISS) API

The DCSA Bill of Lading Issuance API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL_ISS).

Publications related to the Bill of Lading Issuance API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website
- [Bill of Lading](https://dcsa.org/standards/ebill-of-lading/) maintained on the [dcsa.org](https://dcsa.org) website (contains documents and publications)
- [Bill of Lading](./../) maintained here on GitHub
- [Bill of Lading Issuance Response](./../issuance_response/) maintained here on GitHub (the Issuance Response API linked to this API)

<a name="v300"></a>[Release v3.0.0 (...)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.0)
---
This is a moving target and will be updated as soon as the version is published

<a name="v300B20240913"></a>[Release v3.0.0 Beta 20240913 (13 of September 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.0-Beta-20240913)
---
Snapshot as of 13 of September 2024 for EBL Issuance 3.0.0 Beta.
## Key changes
- changed all PseudoEnum values so they no longer include spaces (` `)
- changed regEx for: `XXXSignedContent` properties to reflect Base64Url encodings
- links to specific standardisation bodies versions replaced with more "general" links (Wikipedia links replaced with links to www.iso.org)
- `Transport Document` changes

## All changes
- Added a link to **API Design & Implementation Principles**
- changed `errorDateTime` example to UTC instead of timeZone specific
- multiple typos fixed
- changed regEx for: `issuanceManifestSignedContent` to now reflect Base64Url encodings
- modified description for `IssueToParty`
- removed reference data link on `sendToPlatform` description
- `TaxLegalReference` object updated:
  - description updated to no longer link to reference data (it is currently out of scopre for DCSA to maintain this list)
  - `countryCode` example updated to align with type example
- `transportDocumentStatus` values no longer contain space (` `)
- `declaredValueCurrency` description link changed
- `carrierCode` description updated to make it more clear that it is a `SCAC` code
- `descriptionOfGoods` changed from string to string array with a `maxItems` of 150 and a `maxLength` of 35
- `HSCodes` description link updated to a general link instead of a specific version
- `shippingMarks` `maxItems` is now 50 and length of each line is 35
- `SCHEDULE B` updated to `SCHEDULE_B` as a value in the type in NationalCommodityCode to avoid the space (` `)
- `CustomsReference` object updated:
  - description updated to no longer link to reference data (it is currently out of scopre for DCSA to maintain this list)
  - `countryCode` example updated to align with type example
- `equipmentReference` description link updated to www.iso.org instead of Wikipedia
- `weight` and `volume` of `CargoItem` renamed to `grossWeight` and `grossVolume` and structure changed to object containing mandatory `value` and `unit`
- `packageCode` description link updated to a general link instead of a specific version
- `imoPackagingCode` description updated
- `woodDeclaration` values no longer contain space (` `)
- `imoClass` reference data link removed
- `fumigationDateTime` example updated to use UTC time
- `volume` renamed to `netVolume` in DG (Dangerous Goods)
- `ISOEquipmentCode` description link updated and example modified
- `tareWeight` and `weightUnit` merged into one optional object containing mandatory `value` and `unit`
- `PlaceOfReceipt`, `PortOfLoading`, `PortOfDischarge`, `PlaceOfDelivery` and `OnwardInlandRouting` condition added to make sure if multiple ways of expressing a location is used that all ways point to the same location
- `currencyCode` description link changed
- `facilityCode` description link updated to a more general page instead of a specific version
- `typeOfPerson` values no longer contain space (` `)

<a name="v300B20240830"></a>[Release v3.0.0 Beta 20240830 (30 of August 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.0-Beta-20240830)
---
Snapshot as of 30 of August 2024 for EBL Issuance 3.0.0 Beta.
## Key changes
- `errorCodeMessage` maxLength updated from 200 --> 5000 in `DetailedError` object
- `partyName` maxLength changed from 100 --> 70 in `IssueToParty` object
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

<a name="v300B20240816"></a>[Release v3.0.0 Beta 20240816 (16 of August 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.0-Beta-20240816)
---
Snapshot as of 16 of August 2024 for EBL Issuance 3.0.0 Beta.
## Key changes
- `Transport Document` updated
  - maxLength of `value` property of all references changed from `100` --> `35` (in order to align with EDI)
  - `CustomReference` now allows a list of values
- optional list of `errors` added to `IssuanceResponse`

## Transport Document changes
- `declaredValue` description updated
- `maxLength=100` changed to `maxLength=35` (in order to be EDI compatible):
  - in `reference` in `Party` object
  - in `value` in `TaxLegalReference` object
  - in `value` in `Reference` objects (which also has a `pattern` added)
  - in `shippersReference` in `Shipper` party object
  - in `shippersPurchaseOrderReference` in `Shipper` party object
  - in `consigneesReference` in `Consignee` party object
  - in `consigneesPurchaseOrderReference` in `Consignee` party object
- `CustomReference` object has the following changes:
  - `maxLength=100` changed to `maxLength=35` for the `value` property
  - the `value` property has been renamed to `values` and is now a list of values instead of a single value

## Issuance changes
- `IssuanceResponse` has new optional `errors` array
- `IssuanceError` object added

<a name="v300B20240726"></a>[Release v3.0.0 Beta 20240726 (26 of July 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.0-Beta-20240726)
---
Snapshot as of 26 of July 2024 for EBL Issuance 3.0.0 Beta.
## Key changes
- `Issuance Response` endPoint added
- `Transport Document` updated

## Issuance changes
- API description updated
- Issuance Response endPoint added
- `issuanceManifestSignedContent` added to `IssuanceRequest` object
- `IssuanceManifest` object deleted

## Transport Document changes
- `placeOfIssue` no longer defined inline but via a $ref to `PlaceOfIssue` object
- values removed from `type` in `reference` (`FF`, `SI`, `SPO`, `CPO`, `AAO`, `ECR`, `CSI`, `BPR`, `BID` and `SAC` all removed and `AKG` added)
- `streetNumber` is no longer a mandatory field in the `Address` nor `PartyAddress` objects
- `shippersReference` and `shippersPurchaseOrderReference` added to `Shipper` object
- `consigneesReference` and `consigneesPurchaseOrderReference` added to `Consignee` object
- `reference` added to `Party` object
- `nationalCommodityCodes` added to `ConsignmentItem`
- `NationalCommodityCode` object added
- `woodDeclaration` added to `OuterPackaging`
- fixed typo in required fields of `Transports` (`vesselVoyage` --> `vesselVoyages`)
- `MULTIMODAL` added as a `Mode of Transport` to `preCarriageBy` and `onCarriageBy`
- `PlaceOfReceipt`, `PortOfLoading`, `PortOfDischarge`, `PlaceOfDelivery` and `OnwardInlandRouting` objects changed from using a `oneOf` into an object where all location types are optional and can be used at the same time


<a name="v300B20240614"></a>[Release v3.0.0 Beta 20240614 (28 of June 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.0-Beta-20240614)
---
Snapshot as of 14 of June 2024 for EBL Issuance 3.0.0 Beta.
## Key changes
- `Transport Document` updated
- `IssueToParty` updated

## General changes
- multiple examples added
- multiple descriptions improved (typos) and multiple `patterns` improved

## Issuance changes
- improved pattern on `IssueToParty` and added 2 extra values: `TRAC` (TRACE Original) and `BRIT` (BRITC eBL)
- `TRAC` (TRACE Original) and `BRIT` (BRITC eBL) added to `codeListProvider` in `IdentifyingCode`

## Transport Document changes
- `minItems=1` removed and examples added to `displayedNameFor***`
- added `title` property multiple places
- `carriersAgentAtDestination` added to the `DocumentParties`
- missing condition added to `volumeUnit` in `CargoItem`
- `minimum` and `exclusiveMinimum` added to `netWeight`, `netExplosiveContent` and `volume` properties in DG (Dangerous Goods)
- `LBR` (Pounds) and `ONZ` (Ounce) added as allowed value in `unit` on `netExplosiveContent` in DG
- `shippingMarks` added to `UtilizedTransportEquipment`
- `vesselVoyage` renamed to `vesselVoyages` in the `Transports` object
- missing `pattern` added to `locationName` in `AddressLocation` object
- `name` property removed from the `Address` object
- `postCode` maxLength changed from `50` --> `10` in `Address` and `PartyAddress` objects
- `stateRegion` nullable removed in `AddressLocation`, `PartyAddress` and `CityLocation`
- added, removed and fixed required fields in the `Address` object
- missing `maxLength=4` on `locationType` in `CityLocation` object
- fixed wrong required field `country` --> `countryCode` in `CityLocation` object
- `facilityCode` nullable removed in `FacilityLocation`
- `CarriersAgentAtDestination` object added

<a name="v300B2"></a>[Release v3.0.0 Beta 2 (12 April 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.0-Beta-2)
---
Beta 2 release of the DCSA OpenAPI definitions for Bill of Lading Issuance 3.0.0-Beta-2
## Business changes:
This is a list of high-level business changes:
- `TransportDocument` has been updated - please check here for a list of changes: [Transport Document v3.0.0-Beta-2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/ebl/v3#transport-document-changes)
- `IssueToParty` object has been aligned with EBL
## Technical changes:
This is a list of high-level technical changes:
- The API is now developed using ShopLight instead of SwaggerHub-editor. This means that we are no longer using Domains but now have everything defined inline.
- As a new principle:
  - no $ref pointing outside the yaml file
  - all `simpleTypes` are now specified "inline" in objects
  - all `objects` are now PascalCased and have a `title` property set with a presentable version of the object name in Title Case (all representations of snake_case or Pascal_Snake_Case have been removed)
- all strings having a pattern that matches `^\S+(\s+\S+)*$` have been changed to `\S(?:.*\S)?$` in order to prevent [Catastrophic Backtracking](https://www.regular-expressions.info/catastrophic.html)
## List of detailed changes
- API description has been updated with new links (including Stats API). A link to this ChangeLog has been added
- `tags` section has been added
- `operationId` property added to all endPoints
- using updated `ErrorResponse` object when responding to a `409`
- `default` error now returns an updated `error` object
- `title` property added to `IssuanceRequest` and `TransportDocument` has been updated - se [Transport Document 3.0.0-Beta-2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/ebl/v3#transport-document-changes) for changes
- `IssueToParty` has the following changes:
  - `title` property added
  - `legalName` changed to `partyName` to align with EBL
  - `registrationNumber`, `locationOfRegistration` and `taxReference` have been consolidated into `TaxLegalReferences`
  - `sendToPlatform` description updated to include all allowed values
  - `partyCodes` renamed to `identifyingCodes` in order to align with EBL with the following changes:
    - `codeListProvider` is no longer an `Enum` but a String with `maxLength` 100 and description updated with all possible values
    - `codeListName` description changed to align with new `codeListProvider`
- `TaxLegalReference` object added
- `TransportDocument` object is now included as part of the spec (and no longer a $ref to a Domain defined on SwaggerHub)

<a name="v300B1"></a>[Release v3.0.0 Beta 1 (28 December 2023)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.0-Beta-1)
---
Initial release of the DCSA OpenAPI definitions for Bill of Lading Issuance 3.0.0-Beta-1.
