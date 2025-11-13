## DCSA OVS API

The DCSA OVS API is documented on [**SwaggerHub**](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_OVS).

The primary purpose of this API is to specify endPoints for schedules shared between Vessel Partners. 

<a name="v301"></a>[Release v3.0.1 (14 November 2025)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_OVS/3.0.1)
---
A minor update to improve the usage of OVS.

Bigger changes:
- added an `MMSINumber` filter to the GET endPoint
- added a `vesselOperatorSMDGLinerCode` filter to the GET endPoint
- removed the `ISO 8601` reference in `startDate` and `endDate` descriptions
- added a `cursor` query parameter to the GET endPoint for paginated results
- changed the requirements for the `API-Version` header. Going forward, the entire version (SemVer) should be included - not only the major version. This enables the provider to identify the consumer’s version.
- `Next-Page-Cursor` header added to `200` (Ok) responses
- description modified for `vesselIMONumber` in case the `VesselSchedule` refers to a non-dummy-vessel. The condition has been modified and the `vesselIMONumber` is no longer mandatory - a `MMSINumber` can also be provided.
- `MMSINumber` added next to `vesselIMONumber`. This allows carriers to provide an `MMSInumber` when available, whether or not an `vesselIMOnumber` is provided.
- `vesselName` description improved with recommedation to standardize dummy vessels names
- `isDummyVessel` description improved to mention `vesselName` usage to make the dummy vessel unique
- `9999R` is to be used as placeholder when `carrierImportVoyageNumber` is unknown or not applicable. This allows carriers to provide a pseudo import voyage number in edge cases (e.g., dry dock) without failing validation on the required field.
- `statusCode` in `TransportCall` object **deprecated** - use `statusCodes` instead
- `statusCodes` added to `TransportCall` and to be used instead of `statusCode`. This allows OVS implementers to submit multiple statuses for a transport call, reflecting real-world scenarios where more than one status may apply.
- `delayReasonCode` in `Timestamp` object **deprecated** - use `delayReasonCodes` instead
- `delayReasonCodes` added to `Timestamp` and to be used instead of `delayReasonCode`. This allows OVS implementers to submit multiple delay reasons for a timestamp, reflecting real-world scenarios where more than one cause may apply.

Minor changes:
- improved layout of descriptions
- updated the 'Contact us' link
- removed the `servers` as it was wrongly added
- improved the `limit` query parameter description
- improved error examples
- description added to `ServiceSchedule`, `VesselSchedule`
- improved `title` in objects where a space was missing
- GitHub reference removed from `eventTypeCode` and `statusCode` properties
- `eventClassifierCode` description updated. Additional guidance provided in the API on when to send planned, estimated, and actual timestamps, clarifying semantics so implementers can align expectations with partners.
- `ISO 8601` reference removed from `errorDateTime` property in the `ErrorResponse` object
- removed unused parameter declarations


<a name="v300"></a>[Release v3.0.0 (15 January 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_OVS/3.0.0)
---
Release of OVS 3.0.0

- Aligns with v3.0.0 Beta 2.


<a name="v300B2"></a>[Release v3.0.0 Beta 2 (15 January 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_OVS/3.0.0-Beta-2)
---
- Description updated.
-	carrierServiceName added as a queryParameter
-	carrierServiceCode is now a mandatory field in the response body\
- `statusCode` - `OMIT` value corrected.
- Voyage References now include `R` for round-trip
- Carrier Service Code is now 11 characters.
- Enums replaced with String where required.
- Error schema updated.


<a name="v300B1"></a>[Release v3.0.0 Beta 1 (30 June 2022)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_OVS/3.0.0-Beta-1)
---
This API primarily defines endPoints and otherwise uses the following Domains:
- Event Domain
- Location Domain
- DCSA Domain
- Error Domain

This version focuses on making a schedule endPoint and detaching [JIT 1.0 and JIT 1.1 (Just in Time)](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/jit/v1) into a separate API

- Description updated
- `/events` endPoint removed
- Bump [Event_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v201) (was previously v1.1.1)
- Bump [DCSA_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v201) (was previously v1.0.3)
- Bump [Error_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/error#v110) (was previously v1.0.0)
- please follow domain links above to get full list of changes:
- Total rewrite of OVS
  - `/v3/service-schedules` endPoint added. Can be used for `GET`ing (polling) schedules
  - `/v3/events` endPoint removed
  - `/v3/timestamp` endPoint removed as JIT and OVS separated into 2 APIs
