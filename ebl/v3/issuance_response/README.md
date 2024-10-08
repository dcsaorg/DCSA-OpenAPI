## This API will be discontinued as it is now part of the [Bill of Lading Issuance](https://github.com/dcsaorg/DCSA-OpenAPI/edit/master/ebl/v3/issuance) API

### Bill of Lading Issuance Response (EBL_ISS_RSP) API

The DCSA Bill of Lading Issuance Response API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL_ISS_RSP).

Publications related to the Bill of Lading Issuance Response API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website
- [Bill of Lading](https://dcsa.org/standards/ebill-of-lading/) maintained on the [dcsa.org](https://dcsa.org) websit (contains documents and publications)
- [Bill of Lading](./../) maintained here on GitHub
- [Bill of Lading Issuance](./../issuance/) maintained here on GitHub (the Issuance API linked to this API)

<a name="v300B2"></a>[Release v3.0.0 Beta 2 (12 April 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS_RSP/3.0.0-Beta-2)
---
Beta 2 release of the DCSA OpenAPI definitions for Bill of Lading Issuance Response 3.0.0-Beta-2
## Business changes:
No business changes in this version
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
- `ErrorResponse` object added
- `transportDocumentReference` defined inline instead of a $ref
- `issuanceResponseCode` `example` added
- `reason` `pattern` updated to prevent [Catastrophic Backtracking](https://www.regular-expressions.info/catastrophic.html)
- `reason` `example` added

<a name="v300B1"></a>[Release v3.0.0 Beta 1 (28 December 2023)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS_RSP/3.0.0-Beta-1)
---
Initial release of the DCSA OpenAPI definitions for Bill of Lading Issuance Response 3.0.0-Beta-1.
