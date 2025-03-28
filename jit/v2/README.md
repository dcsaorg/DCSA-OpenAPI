### Just in Time (JIT)

The DCSA Interface Standard for Just in Time Portcalls is documented on the **[DCSA JIT](https://app.swaggerhub.com/apis/dcsaorg/DCSA_JIT) SwaggerHub**.

<a name="v200"></a>[Release v2.0.0 (...)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/2.0.0)
---
This is a moving target and will be updated as soon as the version is published

<a name="v200B20250328"></a>[Release v2.0.0 Beta 20250328 (28 of March 2025)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/2.0.0-Beta-20250328)
---
Snapshot as of 28 of March 2025 for JIT 2.0.0 Beta.
## Key changes
- added 2 new headers: `Response-Sending-Party` and `Response-Receiving-Party` to all endPoint responses (this allows relaying JIT messages through 3rd party system)
- renamed 2 headers: `Sending-Party` and `Receiving-Party` to `Request-Sending-Party` and `Request-Receiving-Party`
- changed the `httpMethod` enum value `OPTION` --> `OPTIONS` in the Error object

## Minor changes
- improved some descriptions and modified some whitespace for better readability
- updated some `statusCode` error examples from `404` -> `400`
- fixed missing `'` in an example
- updated example values and description on the `Request-Sending-Party` and `Request-Receiving-Party` headers to make it more clear

Link to [commits included in this Snapshot](https://github.com/dcsaorg/DCSA-OpenAPI/commits/master/jit/v2/JIT_v2.0.0.yaml?since=2025-03-15&until=2025-03-28)

<a name="v200B20250314"></a>[Release v2.0.0 Beta 20250314 (14 of March 2025)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/2.0.0-Beta-20250314)
---
Snapshot as of 14 of March 2025 for JIT 2.0.0 Beta.
## Key changes
- added 2 new headers: `Sending-Party` and `Receiving-Party` to all endPoint requests (it is now possible to relay JIT messages through 3rd party system)
- removed the `404` (Not Found) response from `PUT /terminal-calls/{terminalCallID}`, `PUT /timestamps/{timestampID}` and `PUT /port-call-services/{portCallServiceID}` endPoints
- added missing `API-Version` header on the `POST /port-call-services/{portCallServiceID}/cancel` endPoint
- removed the requirement for the values of filters added in Query parameters to be present in the objects in the result set

## Minor changes
- Prefixed all instances of **Provider** and **Consumer** with `Service` (**Service Provider** and **Service Consumer**)
- in endPoint description - optional properties are now more explicit (by adding `optional` to them)
- formatting improved in order to be consistent
- error descriptions on endPoints made more clear
- updated internal representation `UNLocationCodeQueryParameter` --> `UNLocationCodeQueryParam` to align with other parameters
- updated some UUID examples in order not to reuse the values

Link to [commits included in this Snapshot](https://github.com/dcsaorg/DCSA-OpenAPI/commits/master/jit/v2/JIT_v2.0.0.yaml?since=2025-02-15&until=2025-03-14)

<a name="v200B20250214"></a>[Release v2.0.0 Beta 20250214 (14 of February 2025)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/2.0.0-Beta-20250214)
---
Snapshot as of 14 of February 2025 for JIT 2.0.0 Beta.
## Key changes
- `portCallServiceType` renamed to `portCallServiceTypeCode` (to comply with DCSA API Design principles)
- clarified condition for `carrierCode` in `moves` object in the descriptions to remove ambiguity.

## Minor changes
- descriptions updated to make it clear if there is a **Condition** or a **Recommendation**
  - `portCallPhaseTypeCode` and `facilityTypeCode` values only have Recommendations (and not Conditions)
- description for the `portCallServiceLocation` on the **Timestamp** object has been updated (was previously shared with the `portCallServiceLocation` of the **PortCallService** object)
- it is now more clear that at least one of: `vesselIMONumber` and `MMSINumber` must be provided. It is also acceptable to provide both properties.
- punctuation and formatting improved

Link to [commits included in this Snapshot](https://github.com/dcsaorg/DCSA-OpenAPI/commits/master/jit/v2/JIT_v2.0.0.yaml?since=2025-02-01&until=2025-02-14)

<a name="v200A20250131"></a>[Release v2.0.0 Alpha 20250131 (31 of January 2025)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/2.0.0-Alpha-20250131)
---
Snapshot as of 31 of January 2025 for JIT 2.0.0 Alpha.
## Key changes
- `v2` removed from all URLs
- `classifierCode` query parameter format fixed and example updated

## Minor changes
- remove ISO 8601 reference from `dateTime` property in Timestamp
- minor adjustments to indentations
- typo fixed

Link to [commits included in this Snapshot](https://github.com/dcsaorg/DCSA-OpenAPI/commits/master/jit/v2/JIT_v2.0.0.yaml?since=2025-01-21&until=2025-01-31)

<a name="v200A20250117"></a>[Release v2.0.0 Alpha 20250117 (17 of January 2025)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/2.0.0-Alpha-20250117)
---
Snapshot as of 17 of January 2025 for JIT 2.0.0 Alpha.
## Key changes
- endPoint description and example(s) updates have been provided for all endPoints
- added `409` (Conflict) response codes to the PUT endPoints in case the caller is trying to update or create something that is cancelled, declined or omitted
- added `404` (Not Found) response codes to some of the PUT endPoints in case the caller is trying to update or create something that is linked to something that does not exist
- removed pagination on GET endPoints (removed the `limit` and `cursor` query parameters). EndPoint descriptions have been updated to reflect the fact that some query parameters are mandatory to provide in order to limit the response
- `terminalCallSequenceNumber` removed as a queryParameter on `GET /v2/terminal-calls`
- `portCallServiceEventTypeCode` removed as a queryParameter on `GET /v2/port-call-services`
- `startDateTime` and `endDateTime` removed as a queryParameter on `GET /v2/timestamps`
- `default=false` added to `omitted`, `isFYI`, `cancelled` and `declined` boolean properties. Since these parameters are optional to provide - a default value of `false` has been added to them
- `afterDraft` renamed to `aftDraft`

## Minor changes
- `minimum=0` added to units-properties in the `Moves` object
- descriptions of properties in the `Moves` object have been updated to better reflect the meaning of the property
- updated the `errorDateTime` property in the error object and removed the conflicting reference to ISO 8601

Link to [commits included in this Snapshot](https://github.com/dcsaorg/DCSA-OpenAPI/commits/master/jit/v2/JIT_v2.0.0.yaml?since=2024-12-21&until=2025-01-20)

<a name="v200A20241220"></a>[Release v2.0.0 Alpha 20241220 (20 of December 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/2.0.0-Alpha-20241220)
---
Snapshot as of 20 of December 2024 for JIT 2.0.0 Alpha.
## Key changes
- endPoint description and example(s) updates have been provided for (`PUT /v2/port-calls/{portCallID}`, `POST /v2/port-calls/{portCallID}/omit` and `GET /v2/port-calls`
- `afterDraft` and `forwardDraft` added to `VesselStatus`
- `Moves` updated to make it more clear that it is about **units**
  - many descriptions updated
  - `Restows` changed to include **totals** and **specifics**
  - `45" units` added to all types of moves
  - many properties updated to include `units` instead of `moves` as part of the property name

## Minor changes
- JIT now links to DNI (API Design & Implementation Principles) version 2.**0** instead of 2.1

Link to [commits included in this Snapshot](https://github.com/dcsaorg/DCSA-OpenAPI/commits/master/jit/v2/JIT_v2.0.0.yaml?since=2024-12-07&until=2024-12-20)

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
    - all timestamp endPoints merged into a single endPoint now containing a `classifierCode` property (to distinguish different event types)
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

Link to [commits included in this Snapshot](https://github.com/dcsaorg/DCSA-OpenAPI/commits/master/jit/v2/JIT_v2.0.0.yaml?since=2024-11-23&until=2024-12-06)

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
  - `TotalMoves` object (used in many of the `oneOf` structures) has `additionalProperties: false` set in order for code generators to work properly
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

Link to [commits included in this Snapshot](https://github.com/dcsaorg/DCSA-OpenAPI/commits/master/jit/v2/JIT_v2.0.0.yaml?since=2024-11-09&until=2024-11-22)

<a name="v200A20241108"></a>[Release v2.0.0 Alpha 20241108 (8 of November 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/2.0.0-Alpha-20241108)
---
Snapshot as of 8 of November 2024 for JIT 2.0.0 Alpha. The API has fundamentally changed compared to v1.x
## Key changes
- Initial major release

Link to [commits included in this Snapshot](https://github.com/dcsaorg/DCSA-OpenAPI/commits/master/jit/v2/JIT_v2.0.0.yaml?until=2024-11-08)
