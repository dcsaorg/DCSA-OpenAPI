### Bill of Lading Surrender (EBL_SUR) API

The DCSA Bill of Lading Surrender API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL_SUR).

Publications related to the Bill of Lading Surrender API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website
- [Bill of Lading](https://dcsa.org/standards/ebill-of-lading/) maintained on the [dcsa.org](https://dcsa.org) websit (contains documents and publications)
- [Bill of Lading](./../) maintained here on GitHub
- [Bill of Lading Surrender Response](./../surrender_response/) maintained here on GitHub (the Surrender Response API linked to this API)

<a name="v300"></a>[Release v3.0.0 (...)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR/3.0.0)
---
This is a moving target and will be updated as soon as the version is published

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
