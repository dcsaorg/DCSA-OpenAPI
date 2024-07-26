### Platform Interoperability (PINT) API

The DCSA Platform Interoperability API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL_PINT).

Publications related to the PINT API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website

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
