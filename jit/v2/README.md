### Just in Time (JIT)

The DCSA Interface Standard for Just in Time Portcalls is documented on the **[DCSA JIT](https://app.swaggerhub.com/apis/dcsaorg/DCSA_JIT) SwaggerHub**.

<a name="v200"></a>[Release v2.0.0 (...)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/2.0.0)
---
This is a moving target and will be updated as soon as the version is published

<a name="v200A20241206"></a>[Release v2.0.0 Alpha 20241206 (6 of December 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/2.0.0-Alpha-20241206)
---
Snapshot as of 6 of December 2024 for JIT 2.0.0 Alpha.
## Key changes
- Entire API restructure rewritten to 'Normalize' the API.
  - **Port Call Service** endpoint is split into 4 endpoints:
    - **Port Call** endPoint
    - **Terminal Call** endPoint
    - **Port Call Service** endPoint
    - **Vessel Status** endPoint
  - **Timestamp** endPoint renamed
    - all timestamp endPoints merged into a single endPoint now containing a `classifierCode` property to distinguish different event types)
    - GET /timestamp endPoint added (Timestamps removed from **Port Call Service**)
  - **Vessel** object split into 2 objects:
    - **Vessel** containing static vessel data (`IMONumber`, `MMSINumber`, `Name`, ...)
    - **Vessel Status** containing dynamic data (draft, position, `milesToDestinationPort`)
  - GET endPoint responses changed into a result set. Relevant filters have been added to all
  - It is possible to specify if the *Moves* belong to a specific VSA partner in the vessel or if the moves are for the whole vessel. 
  - Many properties in the **Port Call Service** object have clear conditions added specifying how and when values can be used

## Minor changes
  - error responses fixed
  - Renamed `transportCallReference` to `terminalCallReference`
  - Renamed `transportCallSequenceNumber` to `terminalCallSequenceNumber`
  - `airDraft` added to `Vessel Status`
  - `carrierServiceName`, `carrierServiceCode` and `universalServiceReference` moved from `Port Call` --> `Terminal Call`
  - `portCallServiceDateTime` in the **Timestamp** renamed to `dateTime`

<a name="v200A20241122"></a>[Release v2.0.0 Alpha 20241122 (22 of November 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/2.0.0-Alpha-20241122)
---
Snapshot as of 22 of November 2024 for JIT 2.0.0 Alpha.
## Key changes
- API description updated
- `Transport Call` renamed to `Terminal Call` everywhere (properties, endPoints, description-text, etc) except: `transportCallReference` (used in OVS) and `transportCallSequenceNumber` (used in T&T)
- added errorCodes (`400` (Bad Request), `404` (Not Found) and `500` (Internal Server Error)) to all responses where applicable
- added `UNLocationCode` as a mandatory property to the **Port Call** object
- `type` renamed to `typeCode` in the `Vessel` object
- `airDraft` property added to `Vessel`
- `VESSEL_READY` split into 2 values: `VESSEL_READY_FOR_CARGO_OPERATIONS` and `VESSEL_READY_TO_SAIL` in `portCallServiceType`
- a lot of reshuffling in the moves object
  - changed the structure to **not** include `allOf`
  - all descriptions updated
  - `bbPieces` removed
  - all inner defined objects in `oneOf` structures are now $ref pointing to globally defined objects
  - `TotalMoves` object (used in may of the `oneOf` structures) has `additionalProperties: false` set in order for code generators to work properly
  - all properties set to `type: integer` and `format: int32`
  - Many "helper" objects created globally
  - some properties renamed to better align property and objects
- `UNLocationCode` inside `PortCallServiceLocation` is now mandatory to provide (and description of `PortCallServiceLocation` updated to reflect this)
- `portCallServiceLocation` added to the `RequestedTimestamp` for the consumer to suggest a more specialized location

## Minor changes
- updated license link to use http**s** instead of just http
- removed surrounding `'` from all regex patterns
- updated the descriptions:
  - `carrierServiceName`, `carrierServiceCode`, `omitted` (both in **Port Call** and **Transport Call**, `Vessel`, `milesToDestinationPort`, `portCallServiceID`, `cancel`, `decline`, `omit` and `portCallServiceType`
  - `transportCallReference` example updated

<a name="v200A20241108"></a>[Release v2.0.0 Alpha 20241108 (8 of November 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/2.0.0-Alpha-20241108)
---
Snapshot as of 8 of November 2024 for JIT 2.0.0 Alpha. The API has fundamentally changed compared to v1.x
## Key changes
- Initial major release
