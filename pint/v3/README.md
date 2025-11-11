### Platform Interoperability (PINT) API

The DCSA Platform Interoperability API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL_PINT).

Publications related to the PINT API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website

<a name="v300"></a>[Release v3.0.0 (...)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_PINT/3.0.0)
---
This is a moving target and will continue to be updated:

<a name="v300B2025{TBD}"></a>[Release v3.0.0 Beta 2025{TBD} (TBD)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_PINT/3.0.0-Beta-2025{TBD})
---
Snapshot as of {TBD} for EBL Platform Interoperability 3.0.0 Beta. This Snapshot breaks backward compatibility: changes `actionCodes` in the Transaction chain, changes `recipient` from mandatory to optional, and renames properties to align with Surrender API. The rest of the changes are backward compatible.
- `OPTION` renamed to `OPTIONS` on the `httpMethod` on Error-object
- added missing descriptions to objects/properties: `EblEnvelope`, `EnvelopeManifest`, `EnvelopeTransferChainEntry`, `EnvelopeTransferStartedResponse`, `EnvelopeTransferFinishedResponse`, `name` (on `DocumentMetadata`), `Transaction`, `Transports`
- `ESSD` as `eblPlatform` and `codeListProvider` have been deprecated - `IDT` should be used
- `BLOC` (BlockPeer Technologies) added as a new `eblPlatform` and `codeListProvider`
- `previousEnvelopeTransferChainEntrySignedContentChecksum` and `reason`: `nullable: true` removed as the optional property should be left out of the payload if it is `null`
- improved description formatting
- improved `reason` example
- on the `Transaction` object:
  - `action` renamed to `actionCode` to align with Surrender API
  - `actionCode` description updated to align with Surrender API
  - existing `actionCode` values updated to align with Surrender API:
    - `ISSU` --> `ISSUE`
    - `TRNS` --> `TRANSFER`
    - `ENDO` --> `ENDORSE`
    - `RESD` --> `SURRENDER_FOR_DELIVERY`
    - `RESA` --> `SURRENDER_FOR_AMENDMENT`
  - new `actionCode` values added:
    - `ENDORSE_TO_ORDER`
    - `BLANK_ENDORSE`
    - `SIGN`
  - `actionCode` changed from Enum to PseudoEnum to allow updates in future patches
  - `actorParty` and `recipientParty` now specialized for better descriptions (the structure is the same)
  - `timestamp` renamed to `actionDateTime` and type changed from `integer` --> `string` to align with Surrender
  - `reason` renamed to `reasonCode` to align with Surrender
  - two new `reasonCodes` added:
    - `COD` (Change of destination)
    - `SWI` (Switch BL)
  - `reasonCode` description updated
  - `comments` description updated
  - `recipient` is **no** longer a required property on `Transaction` (it is not needed for `SIGN`, `BLANK_ENDORSE` and `SURRENDER` `actionCodes`)
- `representedParty` property (equivalent to an `OnBehalfOfParty`) added to `actorParty` and `recipientParty`

## Transport Document changes
- `countryCode` description in `TaxLegalReference`, `NationalCommodityCode`, `CustomsReference`, `Address`, `PartyAddress`, `City` and `PlaceOfIssue` updated to allow the use of `ZZ` in case it is not known
- the condition clarified for: `numberOfOriginalsWithCharges` and `numberOfOriginalsWithoutCharges`
- two new DocumentParties added: `OnBehalfOfShipper` and `OnBehalfOfConsignee`
- `ESSD` as `eblPlatform` and `codeListProvider` have been deprecated - `IDT` should be used
- `BLOC` (BlockPeer Technologies) added as a new `eblPlatform` and `codeListProvider`
- clarify in `latitude` and `longitude` description that the value is expressed using ISO 6709 data interchange numeric format

<a name="v300B20250731"></a>[Release v3.0.0 Beta 20250731 (31 of July 2025)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_PINT/3.0.0-Beta-20250731)
---
Snapshot as of 31 of July 2025 for EBL Platform Interoperability 3.0.0 Beta.

## Other changes
- removed Servers list that was wrongly added (no Virtual Servers are connected to DCSA APIs)
- removed the reference to `ISO 8601` (all dateTime fields must comply with [RFC 3339, section 5.6](https://datatracker.ietf.org/doc/html/rfc3339#section-5.6))
- added an extra **Note** on the `displayedAdress` mentioning that some carriers might allow for more than 2 lines for physical Bill of Ladings
- `codeListProvider` and `eblPlatform` updated with the following values: `COVA` (Covantis), `ETIT` (e-title), `KTNE` (KTNET) and `CRED` (Credore)

<a name="v300B20241217"></a>[Release v3.0.0 Beta 20241217 (17 of December 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_PINT/3.0.0-Beta-20241217)
---
Snapshot as of 17 of December 2024 for EBL Platform Interoperability 3.0.0 Beta.

## Schema changes
- missing `INCD` enum value in `responseCode` property added to the `EnvelopeTransferFinishedResponse` object

## Other changes
- the API follows `API Design & Implementation Principles` v2.**0** instead of v2.1
- Link to **create a GitHub issue** has been updated to point to DCSA [Contact Us](https://dcsa.org/get-involved/contact-us) page
- License url has been updated to secure socket (http --> http**s**)
- typos fixed: everywhere **E**BL was mentioned has been changed to **e**BL
- The following conditions have been made more clear:
  - `declaredValueCurrency` should not be provided if `declaredValue` is not provided
  - `temperatureUnit` should not be provided if `temperatureSetpoint` is not provided
  - `airExchangeUnit` should not be provided if `airExchange` is not provided
- typo fixed in `o2Setpoint` (**C**O<sub>2</sub> --> O<sub>2</sub>)
- `PlaceOfReceipt` and `PlaceOfDelivery` description updated (wrong reference to `Geo Coordinate` removed)
- description updated for `PlaceOfBLIssue`
- typo fixed in `reference` (in `ImportLicense`) (athorizes --> a**u**thorizes)
- clarifies which party `partyContactDetails` refers to

<a name="v300B20241108"></a>[Release v3.0.0 Beta 20241108 (8 of November 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_PINT/3.0.0-Beta-20241108)
---
Snapshot as of 8 of November 2024 for EBL Platform Interoperability 3.0.0 Beta.
## Key changes
- A link on how to create [Digital Signatures](https://developer.dcsa.org/implementing-digital-signatures-for-transport-documents) have been added to the API description
- `Consignee` and `Endorsee` now require at least one `IdentifyingCode`

## Object changes
- properties **modified**:
  - `IdentifyingCodes` is now a mandatory property with a `minItems: 1` in `Consignee` and `Endorsee` objects

## Transport Document changes
- `Consignee` and `Endorsee` now require at least one `IdentifyingCode`

<a name="v300B20241025"></a>[Release v3.0.0 Beta 20241025 (25 of October 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_PINT/3.0.0-Beta-20241025)
---
Snapshot as of 25 of October 2024 for EBL Platform Interoperability 3.0.0 Beta.
## Key changes
- added a `minItems: 1` on all required array-properties (`envelopeTransferChain`, `transactions`, `missingAdditionalDocumentChecksums`)
- `supportingDocuments` removed as a required property on `EnvelopeManifest`
- `identifyingCodes` with a minItems of 1 is now mandatory on `IssueToParty`
- On `Consignee`, `Endorsee`, `NotifyParty` it is now a condition that the `displayedAddress` should be provided instead of the `address`

## Object changes
- properties **added**:
- properties **modified**:
  - `supportingDocuments` removed as a required property on `EnvelopeManifest`
  - `identifyingCodes` with a minItems of 1 is now mandatory on `TransactionParty`
  - On `Consignee`, `Endorsee`, `NotifyParty` it is now a condition that the `displayedAddress` should be provided instead of the `address`
- properties **removed**:

## Transport Document changes
- On `Consignee`, `Endorsee`, `NotifyParty` it is now a condition that the `displayedAddress` should be provided instead of the `address`

## Minor changes
- `EnvelopeManifestSignedContent` example updated to reflect a `EnvelopeManifest` payload
- `issuanceManifestSignedContent` example updated to reflect a `IssuanceManifest` payload
- `EnvelopeTransferChainEntrySignedContent` example updated to reflect a `EnvelopeTransferChainEntry` payload
- `duplicateOfAcceptedEnvelopeTransferChainEntrySignedContent` example updated to reflect a `EnvelopeTransferChainEntrySignedContent` payload
- `EnvelopeTransferFinishedResponseSignedContent` example updated to reflect a `EnvelopeTransferFinishedResponse` payload
- `declaredValueCurrency` is now a conditional property based on `declaredValue` being provided
- descriptions have been updated to make it more clear that 'one of X or Y' should be provided instead of 'either X or Y'
- `unit` descriptions aligned between weights and volumes
- `IssuingParty` description updated

<a name="v300B20241011"></a>[Release v3.0.0 Beta 20241011 (11 of October 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_PINT/3.0.0-Beta-20241011)
---
Snapshot as of 11 of October 2024 for EBL Platform Interoperability 3.0.0 Beta.
## Object changes
- properties **added**:
  - `transportDocumentSubReference` added to `TransportDocument`
  - `exportLicense` and `importLicense` properties added to `TransportDocument`, `ConsignmentItem` and `CargoItem`
  - `ExportLicense` and `ImportLicense` objects added with the following properties: `isRequired`, `reference`, `issueDate` and `expiryDate`
- properties **modified**:
  - `carrierBookingReference` no longer has a Condition regarding
  - `countryCode` is now optional on `NationalCommodityCode`
  - `unNumber` and `naNumber` renamed to `UNNumber` and `NANumber` in `Dangerous Goods`
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
- `CustomsReference` description and examples

<a name="v300B20240927"></a>[Release v3.0.0 Beta 20240927 (27 of September 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_PINT/3.0.0-Beta-20240927)
---
Snapshot as of 27 of September 2024 for EBL Platform Interoperability 3.0.0 Beta.
## Key changes
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
- `duplicateOfAcceptedEnvelopeTransferChainEntrySignedContent` now defined locally instead of $ref
- cleaning up `DocumentMetadata` object (removed unnecessary pattern and added a maxLength and a title)
- added title to `Transaction` object
- Link to the standardized `errorCode` in the `Error` object updated to a public page: [Error codes as specified by DCSA](https://developer.dcsa.org/standard-error-codes)
- `phone` description updated to include [ITU-T recommendation E.123](https://www.itu.int/rec/T-REC-E.123/en)
- `ReferenceConsignmentItem` object created to, in addition, allow `SPO` (Shipper's Purchase Order) and `CPO` (Consignee's Purchase Order) on `ConsignmentItem`
- description updates to properties in the `Address` and `City` objects (the object can be used for other things than just a Party-address)

<a name="v300B20240913"></a>[Release v3.0.0 Beta 20240913 (13 of September 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_PINT/3.0.0-Beta-20240913)
---
Snapshot as of 13 of September 2024 for EBL Platform Interoperability 3.0.0 Beta.
## Key changes
- changed all PseudoEnum values so they no longer include spaces (` `)
- changed regEx for: `XXXSignedContent` properties to reflect Base64Url encodings
- links to specific standardisation bodies versions replaced with more "general" links (Wikipedia links replaced with links to www.iso.org)
- `Transport Document` changes
- added missing title properties on objects

## All changes
- Added a link to **API Design & Implementation Principles**
- multiple typos fixed
- changed `errorDateTime` example to UTC instead of timeZone specific
- `partyName` on `ReceiverValidationResponse` has maxLength changed from 100 --> 70
- `transportDocumentChecksum` pattern added
- changed regEx for: `EnvelopeManifestSignedContent`, `issuanceManifestSignedContent`, `EnvelopeTransferChainEntrySignedContent` and `EnvelopeTransferFinishedResponseSignedContent` to now reflect Base64Url encodings
- `eBLVisualisationByCarrier` renamed to `eBLVisualisationByCarrierChecksum` on `IssuanceManifest`
- removed reference data link on `eblPlatform` description
- `transportDocumentChecksum`, `transportDocumentChecksum` pattern added
- `action` description on `Transaction` updated
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
- `Receiver validation` endPoint added
- `Transport Document` updated

## EBL PINT changes
- multiple description changes (typos)
- Added `Receiver validation` endPoint
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
