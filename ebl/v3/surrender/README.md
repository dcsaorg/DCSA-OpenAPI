### Bill of Lading Surrender (EBL_SUR) API

The DCSA Bill of Lading Surrender API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL_SUR).

Publications related to the Bill of Lading Surrender API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website
- [Bill of Lading](https://dcsa.org/standards/ebill-of-lading/) maintained on the [dcsa.org](https://dcsa.org) website (contains documents and publications)
- [Bill of Lading](./../) maintained here on GitHub
- [Bill of Lading Surrender Response](./../surrender_response/) maintained here on GitHub (the Surrender Response API linked to this API)

<a name="v302"></a>[Release v3.0.2 (14 November 2025)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.2)
---
This is a patch version for the DCSA Surrender API. eBL Solution Providers updated, `ZZ` allowed as countryCode, `NONE` added to allow for "No Party":
- `TransactionParty` split into `ActorParty` and `RecipientParty` in order to provide better descriptions
- `ESSD` as `eblPlatform` and `codeListProvider` have been deprecated - `IDT` should be used
- `BLOC` (BlockPeer Technologies) added as a new `eblPlatform` and `codeListProvider`
- `NONE` added as `eblPlatform` and `codeListProvider` to be used as "No Party" for the recipient when the `actionCode` is `SIGN`, `BLANK ENDORSE` or `SURRENDERED`
- added extra property `representedParty` on `ActorParty` and `RecipientParty`
- added missing description to the following objects: `EndorsementChainLink`, `IdentifyingCode` and `SurrenderRequestAnswer`
- `actionCode` description updated for almost all values and 4 new codes added:
  - `BLANK_ENDORSE`
  - `ENDORSE_TO_ORDER`
  - `TRANSFER`
  - `SURRENDERED`
- new `reasonCode` added:
  - `COD` (Change of destination)
  - `SWI` (Switch BL)
- description for `comments` updated
- `endorsementChain` description updated to reflect `actionCode`
- `countryCode` description in `TaxLegalReference` updated (to align with eBL) to allow the use for `ZZ` in case it is not known
- SwaggerHub API Auto Mocking removed
- `auditReference` property added to the `EndorsementChainLink` object, it can be used as an identifier issued by the eBL Solution Provider

<a name="v301"></a>[Release v3.0.1 (31 July 2025)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.1)
---
This is a patch version for the DCSA Surrender API. It only includes minor cosmetic changes. The purpose of the patch is to align with electronic Bill of Lading v3.0.1 API.
## Minor changes
- removed Servers list that was wrongly added (no Virtual Servers are connected to DCSA APIs)
- removed the reference to `ISO 8601` (all dateTime fields must comply with [RFC 3339, section 5.6](https://datatracker.ietf.org/doc/html/rfc3339#section-5.6))
- `codeListProvider` and `eblPlatform` updated with the following values: `COVA` (Covantis), `ETIT` (e-title), `KTNE` (KTNET) and `CRED` (Credore)

<a name="v300"></a>[Release v3.0.0 (17 December 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.0)
---
This is the final version 3.0.0 for the DCSA Bill of Lading Surrender API. Compared to latest snapshot released 8 November the following has changed:
- the API follows `API Design & Implementation Principles` v2.**0** instead of v2.1
- Link to **create a GitHub issue** has been updated to point to DCSA [Contact Us](https://dcsa.org/get-involved/contact-us) page
- License url has been updated to secure socket (http --> http**s**)
- typos fixed: everywhere **E**BL was mentioned has been changed to **e**BL
- typos fixed: purpose --> purpose in `endorsementChain` description

<a name="v300B20241108"></a>[Release v3.0.0 Beta 20241108 (8 of November 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.0-Beta-20241108)
---
Snapshot as of 8 of November 2024 for EBL Surrender 3.0.0 Beta.

**There are no changes in this Snapshot**

<a name="v300B20241025"></a>[Release v3.0.0 Beta 20241025 (25 of October 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.0-Beta-20241025)
---
Snapshot as of 25 of October 2024 for EBL Surrender 3.0.0 Beta.
## Key changes
- Description of API has been updated to make it clear that a Surrender Request for a B/L **MUST be done from same Solution Provider** as was used to Issue the B/L
- `identifyingCodes` is now a mandatory property on `TransactionParty`

## Object changes
- properties modified:
  - `identifyingCodes` set to mandatory with at least one `IdentifyingCode` on `TransactionParty`

## Minor changes
- updated Tag descriptions to reflect which party is to implement the endPoints

<a name="v300B20241011"></a>[Release v3.0.0 Beta 20241011 (10 of October 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.0-Beta-20241011)
---
Snapshot as of 10 of October 2024 for EBL Surrender 3.0.0 Beta.
## Object changes
- properties added:
  - `transportDocumentSubReference` added to `SurrenderRequestDetails`

## All changes
- API description updated
- Description of `TRAC` changed from `TRACE Original` to `Enigio trace:original` in both `eblPlatform` and `codeListProvider`
- `SurrenderRequestDetails` description changed
- `transportDocumentSubReference` added as an optional property to the `SurrenderRequestDetails`
- Wrongly defined mandatory required `surrenderRequestedBy` removed from `SurrenderRequestDetails`
- `EU` removed from `codeListProvider`
- `EORI` removed from `codeListName`
- extra example added to the `TaxLegalReference` description

<a name="v300B20240927"></a>[Release v3.0.0 Beta 20240927 (27 of September 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.0-Beta-20240927)
---
Snapshot as of 27 of September 2024 for EBL Surrender 3.0.0 Beta.
## All changes
- API description updated
- Link to the standardized errorCode in the Error object updated to a public page: [Error codes as specified by DCSA](https://developer.dcsa.org/standard-error-codes)

<a name="v300B20240913"></a>[Release v3.0.0 Beta 20240913 (13 of September 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.0-Beta-20240913)
---
Snapshot as of 13 of September 2024 for EBL Surrender 3.0.0 Beta.
## Key changes
- Added a link to **API Design & Implementation Principles**
- `eblPlatform` description updated to remove reference data link
- `actionDateTime` example update to be UTC
- `actionCode` values updated to no longer contain space (` `)
- `endorsementChain` description updated
- `TaxLegalReference` object updated:
  - description updated to no longer link to reference data (it is currently out of scope for DCSA to maintain this list)
  - `countryCode` example updated to align with type example
- changed `errorDateTime` example to UTC instead of timeZone specific and updated description link
- typos fixed

<a name="v300B20240830"></a>[Release v3.0.0 Beta 20240830 (30 of August 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.0-Beta-20240830)
---
Snapshot as of 30 of August 2024 for EBL Surrender 3.0.0 Beta.
## Key changes
- `partyName` maxLength changed from 100 -> 70 in `TransactionParty` object
- description updated on `codeListProvider` to include **`EU` (European Union Member State Customs Authority)** as a value
- description updated on `codeListName` to include **`EORI` (Economic Operators Registration and Identification)** as a value
- `partyCode` maxLength changed from 100 --> 150 in `IdentifyingCode` object
- `errorCodeMessage` maxLength changed from 200 -> 5000

<a name="v300B20240816"></a>[Release v3.0.0 Beta 20240816 (16 of August 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.0-Beta-20240816)
---
Snapshot as of 16 of August 2024 for EBL Surrender 3.0.0 Beta.
## Key changes
- maxLength of `value` property of `TaxLegalReference` all reference changed from `100` --> `35` (in order to align with EDI)

<a name="v300B20240726"></a>[Release v3.0.0 Beta 20240726 (26 of July 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.0-Beta-20240726)
---
Snapshot as of 26 of July 2024 for EBL Surrender 3.0.0 Beta.
## Key changes
- `Surrender Response` endPoint added

## Surrender changes
- API description updated
- `/v3/ebl-surrender-requests` responseCode changed from `202` --> `204`
- Surrender Response endPoint added
- `eblPlatform` pattern improved
- `SurrenderRequestedBy` object removed
- `EndorsementChainLink` added mandatory `actionCode` property
- `SurrenderRequestAcknowledgement` object removed
- `SurrenderRequestDetails` has the following changes
  - `reason` renamed to `reasonCode` in
  - pattern added to `comments`
  - `title` added
  - `surrenderRequestedBy` property added
- `codeListName` in `IdentifyingCodes` now has a maxLength of 100 and is defined as type=string
- `SurrenderRequestAnswer` object added
- multiple typos in descriptions fixed

<a name="v300B20240614"></a>[Release v3.0.0 Beta 20240614 (28 of June 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.0-Beta-20240614)
---
Snapshot as of 14 of June 2024 for EBL Surrender 3.0.0 Beta.
## Key changes
- `TRAC` (TRACE Original) and `BRIT` (BRITC eBL) added as `eblPlatform` values in both `TransactionParty` and `SurrenderRequestBy` objects
- `TRAC` (TRACE Original) and `BRIT` (BRITC eBL) added as `codeListProvider` values in `IdentifyingCode` object.
- typo in `DCSA` value and `DID` descriptions fixed
- `countryCode` pattern improved

<a name="v300B2"></a>[Release v3.0.0 Beta 2 (12 April 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.0-Beta-2)
---
Beta 2 release of the DCSA OpenAPI definitions for Bill of Lading Surrender 3.0.0-Beta-2
## Business changes:
This is a list of high-level business changes:
- all `Party` objects (`TransactionParty` and `SurrenderRequestBy`) have been aligned with EBL 3.0.0 Beta 2
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
- `default` error now returns `ErrorResponse` (an updated `error` object)
- `API-Version` header is now defined inline
- `API-Version-Major` parameter is now defined inline
- `TransactionParty` object update so it is aligned with the EBL `Party` object
- `SurrenderRequestedBy` object created and is aligned with the EBL `Party` object
- `SurrenderRequestAcknowledgement` object now has all properties defined inline
- `surrenderRequestDetails` object updated with the following:
  - all properties defined inline
  - `surrenderRequestBy` references `SurrenderRequestedBy` object
- `IdentifyingCode` object added
- `TaxLegalReference` object added
- `ErrorResponse` object added

<a name="v300B1"></a>[Release v3.0.0 Beta 1 (28 December 2023)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.0-Beta-1)
---
Initial release of the DCSA OpenAPI definitions for Bill of Lading Surrender 3.0.0-Beta-1.
