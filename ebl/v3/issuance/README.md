### Bill of Lading Issuance (EBL_ISS) API

The DCSA Bill of Lading Issuance API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL_ISS).

Publications related to the Bill of Lading Issuance API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website
- [Bill of Lading](https://dcsa.org/standards/ebill-of-lading/) maintained on the [dcsa.org](https://dcsa.org) websit (contains documents and publications)
- [Bill of Lading](./../) maintained here on GitHub
- [Bill of Lading Issuance Response](./../issuance_response/) maintained here on GitHub (the Issuance Response API linked to this API)

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
