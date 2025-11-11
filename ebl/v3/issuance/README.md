### Bill of Lading Issuance (EBL_ISS) API

The DCSA Bill of Lading Issuance API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL_ISS).

Publications related to the Bill of Lading Issuance API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website
- [Bill of Lading](https://dcsa.org/standards/ebill-of-lading/) maintained on the [dcsa.org](https://dcsa.org) website (contains documents and publications)
- [Bill of Lading](./../) maintained here on GitHub
- [Bill of Lading Issuance Response](./../issuance_response/) maintained here on GitHub (the Issuance Response API linked to this API)

<a name="v302"></a>[Release v3.0.2 (TBD)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.2)
---
This is a patch version for the DCSA Issuance API. eBL Solution Providers updated, `ZZ` allowed as `countryCode`, 2 new DocumentParties added:

- descriptions added to properties and objects that did not have descriptions (`SupportingDocument`, `name` in `SupportingDocument`, `IdentifyingCode`, `Transports`, `IssuanceError` and `IssuanceResponse`)
- `Issue To Party` description updated
- `ESSD` as `sendToPlatform` and `codeListProvider` have been deprecated - `IDT` should be used
- `BLOC` (BlockPeer Technologies) added as a new `sendToPlatform` and `codeListProvider`
- `countryCode` description in `TaxLegalReference`, `NationalCommodityCode`, `CustomsReference`, `Address`, `PartyAddress`, `City` and `PlaceOfIssue` updated (to align with eBL) to allow the use for `ZZ` in case it is not known
- clarified conditions for `numberOfOriginalsWithCharges` and `numberOfOriginalsWithoutCharges`
- 2 new DocumentParties added: `OnBehalfOfShipper` and `OnBehalfOfConsignee`
- SwaggerHub API Auto Mocking removed
- clarify in `latitude` and `longitude` description that the value is expressed using ISO 6709 data interchange numeric format

<a name="v301"></a>[Release v3.0.1 (31 July 2025)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.1)
---
This is a patch version for the DCSA Issuance API. It only includes minor cosmetic changes. The purpose of the patch is to align with electronic Bill of Lading v3.0.1 API.
## Minor changes
- removed Servers list that was wrongly added (no Virtual Servers are connected to DCSA APIs)
- removed the reference to `ISO 8601` (all dateTime fields must comply with [RFC 3339, section 5.6](https://datatracker.ietf.org/doc/html/rfc3339#section-5.6))
- fixed some formatting in the `transportDocumentStatus` description and some places referring to `Transport Document`
- added an extra **Note** on the `displayedAdress` mentioning that some carriers might allow for more than 2 lines for physical Bill of Ladings
- `codeListProvider` and `sendToPlatform` updated with the following values: `COVA` (Covantis), `ETIT` (e-title), `KTNE` (KTNET) and `CRED` (Credore)
- clarifies which party `partyContactDetails` refers to

<a name="v300"></a>[Release v3.0.0 (17 December 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.0)
---
This is the final version 3.0.0 for the DCSA Bill of Lading Issuance API. Compared to latest snapshot released 8 November the following has changed:
- the API follows `API Design & Implementation Principles` v2.**0** instead of v2.1
- Link to **create a GitHub issue** has been updated to point to DCSA [Contact Us](https://dcsa.org/get-involved/contact-us) page
- License url has been updated to secure socket (http --> http**s**)
- typos fixed: everywhere **E**BL was mentioned has been changed to **e**BL
- fixed `409` response description for the `PUT` endPoint
- The following conditions have been made more clear:
  - `declaredValueCurrency` should not be provided if `declaredValue` is not provided
  - `temperatureUnit` should not be provided if `temperatureSetpoint` is not provided
  - `airExchangeUnit` should not be provided if `airExchange` is not provided
- typo fixed in `o2Setpoint` (**C**O<sub>2</sub> --> O<sub>2</sub>)
- `PlaceOfReceipt` and `PlaceOfDelivery` description updated (wrong reference to `Geo Coordinate` removed)
- description updated for `PlaceOfBLIssue`
- typo fixed in `reference` (in `ImportLicense`) (athorizes --> a**u**thorizes)

<a name="v300B20241108"></a>[Release v3.0.0 Beta 20241108 (8 of November 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.0-Beta-20241108)
---
Snapshot as of 8 of November 2024 for EBL Issuance 3.0.0 Beta.
## Key changes
- A link on how to create [Digital Signatures](https://developer.dcsa.org/implementing-digital-signatures-for-transport-documents) have been added to the API description
- `Consignee` and `Endorsee` now require at least one `IdentifyingCode`

## Object changes
- properties **modified**:
  - `IdentifyingCodes` is now a mandatory property with a `minItems: 1` in `Consignee` and `Endorsee` objects

## Transport Document changes
- `Consignee` and `Endorsee` now require at least one `IdentifyingCode`

<a name="v300B20241025"></a>[Release v3.0.0 Beta 20241025 (25 of October 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.0-Beta-20241025)
---
Snapshot as of 25 of October 2024 for EBL Issuance 3.0.0 Beta.
## Key changes
- `identifyingCodes` with a minItems of 1 is now mandatory on `IssueToParty`
- On `Consignee`, `Endorsee`, `NotifyParty` it is now a condition that the `displayedAddress` should be provided instead of the `address`

## Object changes
- properties **added**:
- properties **modified**:
  - `identifyingCodes` with a minItems of 1 is now mandatory on `IssueToParty`
  - On `Consignee`, `Endorsee`, `NotifyParty` it is now a condition that the `displayedAddress` should be provided instead of the `address`
- properties **removed**:

## Transport Document changes
- On `Consignee`, `Endorsee`, `NotifyParty` it is now a condition that the `displayedAddress` should be provided instead of the `address`

## Minor changes
- `issuanceManifestSignedContent` example updated to reflect a `IssuanceManifest` payload
- `declaredValueCurrency` is now a conditional property based on `declaredValue` being provided
- descriptions have been updated to make it more clear that 'one of X or Y' should be provided instead of 'either X or Y'
- `unit` descriptions aligned between weights and volumes
- `IssuingParty` description updated

<a name="v300B20241011"></a>[Release v3.0.0 Beta 20241011 (11 of October 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.0-Beta-20241011)
---
Snapshot as of 11 of October 2024 for EBL Issuance 3.0.0 Beta.
## Key changes
- example updated on responseCode `409` for endPoint `PUT /v3/ebl-issuance-requests`
- request example updated on `POST /v3/ebl-issuance-responses` endPoint
- `transportDocumentSubReference` added to distinguish "versions" of `TransportDocuments`
- `ExportLicense` and `ImportLicense` added to `TransportDocument`

## Object changes
- properties **added**:
  - `transportDocumentSubReference` added to `TransportDocument`
  - `exportLicense` and `importLicense` properties added to `TransportDocument`, `ConsignmentItem` and `CargoItem`
  - `ExportLicense` and `ImportLicense` objects added with the following properties: `isRequired`, `reference`, `issueDate` and `expiryDate`
- properties **modified**:
  - `carrierBookingReference` no longer has a Condition regarding
  - `countryCode` is now optional on `NationalCommodityCode`
  - `unNumber` and `naNumber` renamed to `UNNumber` and `NANumber` in `Dangerous Goods`
  - `transportDocumentSubReference` added to `TransportDocument`
- properties **removed**:
  - `routingOfConsignmentCountries` removed from `TransportDocument`

## Transport Document changes
- `transportDocumentSubReference` added as an optional property to the `TransportDocument`
- `routingOfConsignmentCountries` removed from `TransportDocument`
- `exportLicense` and `importLicense` added to `TransportDocument`, `ConsignmentItem` and `CargoItem`

## All changes
- Description of `TRAC` changed from `TRACE Original` to `Enigio trace:original` in both `eblPlatform` and `codeListProvider`
- `EU` removed from `codeListProvider`
- `EORI` removed from `codeListName`
- extra example added to the `TaxLegalReference` description
- description of `descriptionOfGoods` in `ConsignmentItem` updated
- `NationalCommodityCode` example added
- updated `CustomsReference` description and examples

<a name="v300B20240927"></a>[Release v3.0.0 Beta 20240927 (27 of September 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS/3.0.0-Beta-20240927)
---
Snapshot as of 27 of September 2024 for EBL Issuance 3.0.0 Beta.
## Key changes
- description on the failed `POST /v3/ebl-issuance-responses` no longer states it is a success
- `contentType` added as an optional property to the `SupportingDocument` object with a default value of `application/pdf`
- description clearly updated on properties that are lists/arrays where order needs to be preserved. This goes for:
  - 4x `displayedNameForXXX` on `Transport Document` root level
  - `routingOfConsignmentCountries` on `Transport Document` root level
  - `descriptionOfGoods` on `ConsignmentItem`
  - `shippingMarks` on `ConsignmentItem`and `UtilizedTransportEquipment`
  - `displayedAddress` on the Party objects
- Converted all inner defined objects to globally defined objects. The following objects are now global:
  - `PlaceOfIssue` previously defined as inner object on `TransportDocument`
  - `InvoicePayableAt` previously defined as inner object on `TransportDocument`
  - `DocumentParties` previously defined as inner object on `TransportDocument`
  - `CargoGrossWeight` and `CargoGrossVolume` previously defined as inner object on `CargoItem`
  - `GrossWeight`, `NetWeight`, `NetExplosiveContent` and `NetVolume` previously defined as inner object on `DangerousGoods`
  - `TareWeight` previously defined as inner object on `Equipment`
- `Transport Document ` changes

## Changes to the `Transport Document`
- description update on the `numberOf[Copies|Originals][With|Without]Charges` to better explain the conditions as to how the properties are to be used
- 4x `displayedNameForXXX` description updated to clearly indicate the order of the items in the list must be preserved
- converted `placeOfIssue` to a $ref instead of defining it inline
- converted `invoicePayableAt` to a $ref instead of defining it inline
- converted `documentParties` to a $ref instead of defining it inline
- `routingOfConsignmentCountries` description updated to clearly indicate the order of the items in the list must be preserved
- `ConsignmentItem` now allows `SPO` (Shipper's Purchase Order) and `CPO` (Consignee's Purchase Order) as References
- `grossWeight` and `grossVolume` renamed to `cargoGrossWeight` and `cargoGrossVolume` on `CargoItem`
- `cargoNetWeight` and `cargoNetVolume` added on `CargoItem`
- converted the following properties: `GrossWeight`, `NetWeight`, `NetExplosiveContent` and `NetVolume` on `DangerousGoods` to a $ref instead of defining it inline
- converted `tareWeight` to a $ref instead of defining it inline
- `purchaseOrderReference` on `Shipper` and `Consignee` renamed to `purchaseOrderReferences` and now allows a list of values

## Object changes
- properties **added**:
  - `cargoNetWeight` and `cargoNetVolume` added on `CargoItem`
  - `references` on `ConsignmentItem` now allows `SPO` (Shipper's Purchase Order) and `CPO` (Consignee's Purchase Order)
- properties **modified**:
  -`grossWeight` and `grossVolume` renamed to `cargoGrossWeight` and `cargoGrossVolume` on `CargoItem`
  - `numberOfPackages` on `OuterPackaging` upper limit set to 99999999
  - `PObox` renamed to `POBox` (with capital `B`)
  - `purchaseOrderReference` on `Shipper` and `Consignee` renamed to `purchaseOrderReferences` and now allows a list of values
- properties **removed**:
  - No properties have been removed in this release

## All changes
- API description update
- Link to the standardized `errorCode` in the `Error` object updated to a public page: [Error codes as specified by DCSA](https://developer.dcsa.org/standard-error-codes)
- `phone` description updated to include [ITU-T recommendation E.123](https://www.itu.int/rec/T-REC-E.123/en)
- `ReferenceConsignmentItem` object created to, in addition, allow `SPO` (Shipper's Purchase Order) and `CPO` (Consignee's Purchase Order) on `ConsignmentItem`
- description updates to properties in the `Address` and `City` objects (the object can be used for other things than just a Party-address)

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
  - description updated to no longer link to reference data (it is currently out of scope for DCSA to maintain this list)
  - `countryCode` example updated to align with type example
- `transportDocumentStatus` values no longer contain space (` `)
- `declaredValueCurrency` description link changed
- `carrierCode` description updated to make it more clear that it is a `SCAC` code
- `descriptionOfGoods` changed from string to string array with a `maxItems` of 150 and a `maxLength` of 35
- `HSCodes` description link updated to a general link instead of a specific version
- `shippingMarks` `maxItems` is now 50 and length of each line is 35
- `SCHEDULE B` updated to `SCHEDULE_B` as a value in the type in NationalCommodityCode to avoid the space (` `)
- `CustomsReference` object updated:
  - description updated to no longer link to reference data (it is currently out of scope for DCSA to maintain this list)
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
- `PlaceOfReceipt`, `PortOfLoading`, `PortOfDischarge`, `PlaceOfDelivery` and `OnwardInlandRouting` condition added to make sure if multiple ways of expressing a location is used that always point to the same location
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
- `partyFunctionCode` values updated (`NotifyParty` values removed)
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
