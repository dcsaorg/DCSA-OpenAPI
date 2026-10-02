# Commercial Schedule (CS) API

The DCSA Commercial Schedules API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_CS).

<a name="v104"></a>[Release v1.0.4](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_CS/1.0.4)
---
This patch adds support for identifying cargo-operational calls and representing SMDG waterway entry points in Vessel Schedules.

- Added optional `isCargoOperationalCall` to `TransportCall` in Vessel Schedules to indicate whether cargo loading and/or discharge is applicable at the call.
  - If omitted, the value **MUST** be interpreted as `true`.
  - `false` indicates that neither cargo loading nor cargo discharge is applicable, allowing consumers to filter these calls while retaining access to the complete published vessel rotation.
  - The classification is independent of Planned (`PLN`), Estimated (`EST`) or Actual (`ACT`) timestamps and does not indicate whether cargo was actually loaded or discharged.
  - Calls combining cargo operations with other activities, such as bunkering, remain cargo-operational.
  - Waterway TransportCalls **MUST** explicitly set `isCargoOperationalCall` to `false`.

- Added support for SMDG waterway entry points in Vessel Schedules.
  - Added optional `waterwaySMDGEntryPointCode` to `TransportCallLocation`.
  - The presence of `waterwaySMDGEntryPointCode` identifies the location as a waterway location.
  - `waterwaySMDGEntryPointCode` **MUST** only be used together with `UNLocationCode`.
  - The combination of `UNLocationCode` and `waterwaySMDGEntryPointCode` identifies a specific waterway point and **MUST** be a valid entry in the SMDG Waterway Code List.
  - Waterways are represented using the existing CS location model with optional properties. No `locationType`, discriminator, `oneOf` or separate waterway-location schema was added.
  - Consumers that assume every Vessel Schedule TransportCall represents a port may need to be updated before processing waterway TransportCalls.
  - CS 1.0.4 supports waterway locations only at point-level precision; a plain `UNLocationCode` without `waterwaySMDGEntryPointCode` is not interpreted as a waterway location.

- Clarified the Vessel Schedule semantics for waterway TransportCalls.
  - One waterway TransportCall represents one specific waterway point.
  - The order of the TransportCalls defines their sequence in the vessel schedule.
  - A point at the other end of a waterway can be represented by another ordered TransportCall.
  - Waterway TransportCalls represent locations without cargo loading or discharge operations and without vessel berthing.
  - `portVisitReference` does not apply to waterway TransportCalls and **MUST** be omitted.
  - For a waterway TransportCall, `transportCallReference` identifies the scheduled call at the represented waterway point and does not identify the complete passage through the waterway.
  - For a waterway TransportCall, `ARRI` means arrival at the represented waterway point and `DEPA` means departure from the same point.
  - `DEPA` does not mean that the vessel has exited the complete waterway at its opposite end.

- Generalized port-specific wording in the Vessel Schedules endpoint.
  - Updated the endpoint, filter and response descriptions to refer to `TransportCall` and location where the behavior is not limited to ports.
  - Clarified that `UNLocationCode` can identify a port or a waterway associated with a TransportCall.
  - Retained port-specific wording where it applies specifically to ports, terminals or facilities.

<a name="v103"></a>[Release v1.0.3 (12 June 2026)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_CS/1.0.3)
---
This is a patch release for the DCSA Commercial Schedules API. The primary purpose of this patch is to include 2 new query parameters: `cargoType` and `responseScope` and add **IntermediateCalls** to the legs:

- added `cargoType` query paramter to influence routing solutions returned. Default is `DRY` if not specified
- added `responseScope` query parameter to indicate if FULL voyages or only partial voyages are returned. Default is FULL if not specified
- description of the Point to Point endpoint updated to reflect the fact that partial voyages can be returned if `responseScope` is used
- added `co2e` as a new property when providing emission footprint information
- added a description to the **Transport Call** object
- added an **IntermediateCall** object to capture intermediate port information in Point to Point **Legs**, this includes:
  - `transportCallReference`
  - `facilityTypeCode`
  - `location`
  - `arrivalDateTime`
  - `departureDateTime`
- added `intermediateCalls` to the **Leg** object

Link to [commits included in this patch](https://github.com/dcsaorg/DCSA-OpenAPI/commits/master/cs/v1/CS_v1.0.3.yaml?since=2026-02-14&until=2026-06-12)

<a name="v102"></a>[Release v1.0.2 (13 February 2026)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_CS/1.0.2)
---
This is a patch release for the DCSA Commercial Schedules API. The primary purpose of this patch is to include the emission data in the Point-to-point routings. Here is a list of changes:

- improved the `Next-Page-Cursor` description in all endpoints
- added `transportCallReference` to both `PlaceOfArrival` and `PlaceOfDeparture` (to be used instead of `transportCallReference` in `VesselTransport` and `BargeTransport`)
- deprecated `transportCallReference` in `VesselTransport` and `BargeTransport` - use `transportCallReference` in `PlaceOfArrival` and `PlaceOfDeparture` instead
- added `solutionFootprint` to the Point-to-point routing as a possible indicator of the footprint for the entire route. The footprint includes: `co2`, `sox`, `nox` and `pm10`
- added `footprint` to the legs of Point-to-point routings as a possible indicator of the footprint per leg. The footprint includes: `co2`, `sox`, `nox` and `pm10`
- added `cutOffTimes` to each leg
- `Location` and `TransportCallLocation` objects modified:
  - added `addressLines` as a new way to provide an **unstructured** address
  - added `facilityName`
- `PortScheduleLocation` now also has `facilityName`
- minor changes:
  - removed empty parameters `[]` in all endpoints
  - added a description to objects: `Timestamp`, `VesselSchedule`, `ErrorResponse`, `Vessel` and `Barge`
  - updated the `errorCode` property:
    - no longer links to [Error codes as specified by DCSA](https://developer.dcsa.org/standard-error-codes)
    - does not specify errorCode ranges (this never gained traction)
  - changed encoding of some description characters
    - `–` -> `-`
    - `’` -> `'`
    - `&apos;` -> `'`

Link to [commits included in this patch](https://github.com/dcsaorg/DCSA-OpenAPI/commits/master/cs/v1/CS_v1.0.2.yaml?since=2025-04-26&until=2026-02-13)

<a name="v101"></a>[Release v1.0.1 (25 April 2025)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_CS/1.0.1)
---
This is a patch release for the DCSA Commercial Schedules API. The primary purpose of this patch is to include the `routingReference` property in the Point-to-point responses in order to be able to reference a route in [Booking](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/bkg/v2). Here is a list of changes:

- `routingReference` property added to the Point-to-point object.
- `maxTranshipment` query parameter description imporved to explain meaning of a "transhipment"
- remove the reference to `ISO 8601` (all dateTime fields must comply with [RFC 3339, section 5.6](https://datatracker.ietf.org/doc/html/rfc3339#section-5.6)), affecting the following query parameters: `startDate` and `endDate`, the following properties: `dateTime` (in `PlaceOfReceipt`, `PlaceOfDelivery`, `PlaceOfArrival` and `PlaceOfDeparture`), `eventDateTime` (in Timestamp), `cutOffDateTime` (in CutOffTime), `errorDateTime` (in ErrorResponse)
- typos and punctuation fixed in descriptions
- `operatorCarrierCodeListProvider` and `carrierCodeListProvider` descriptions improved in order to list the enum values
- `facilitySMDGCode`, `startDate` and `endDate` descriptions have been improved
- Github link to reference data for `cutOffDateTimeCode` has been removed
- removed Servers list that was wrongly added (no Virtual Servers are connected to DCSA APIs)
- Contact Us link update to **https://dcsa.org/get-involved/contact-us**

Link to [commits included in this patch](https://github.com/dcsaorg/DCSA-OpenAPI/commits/master/cs/v1/CS_v1.0.1.yaml?since=2024-01-15&until=2025-04-25)

### <a name="v100"></a>[Release v1.0.0 (24 September 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_CS/1.0.0)
---

## Key changes
- `cutOffTimes` added as optional object to all the three endpoints
- `modeOfTransport` modified for point-to-point routings endpoint
- changed `vesselOperatorSMDGLinerCode` --> `operatorCarrierCode` + `operatorCarrierCodeListProvider`
- locations are handled differently going forward. Locations are no longer defined using a `oneOf` but rather via optional properties.
- Added Pagination to all the endpoints

## All changes
- Point-to-point
  - Filters
    - `departureDateTime` changed to `departureStartDate`,`departureEndDate`
    - `arrivalDateTime` changed to `arrivalStartDate`,`arrivalEndDate`
    - `isTranshipment` changed to `maxTranshipment`($int32)
    - Added `cursor`
  - Response
    - Added `receiptTypeAtOrigin`,`receiptTypeAtDestination`,`cutOffTimes`,`solutionNumber` to the response
    - `transitTime` format changed from $int64 to $int32
    - `facilitySMDGCode` split to `facilityCode` and `facilityCodeListProvider`(BIC,SMDG)
    - `dateTime` to be expressed in local time with offset (YYYY-MM-DDTHH:MM:SS±HH:MM)
      - with exception of `errorDateTime` which is in UTC without offset.
    - changed `modeOfTransport` to `transport` object and moved transport-related information to the transport object with different transport mode.
      - Added `RAIL_TRUCK`,`BARGE_TRUCK`,`BARGE_RAIL`,`MULTIMODAL` to `modeOfTranport`,now supports `VESSEL`,`BARGE`,`TRUCK`,`RAIL`,`RAIL_TRUCK`,`BARGE_TRUCK`,`BARGE_RAIL`,`MULTIMODAL`
      - `modeOfTransport` made mandatory and  added to `transport` object to limit additional details depending on the `modeOfTransport`. Each transport mode has only the following `modeOfTransport` values:
        - Vessel Transport → modeOfTransport [`VESSEL`]
        - Barge Transport → modeOfTransport [`BARGE`]
        - Other Transport → modeOfTransport [`RAIL_TRUCK`,`BARGE_TRUCK`,`BARGE_RAIL`,`MULTIMODAL`]
      - `Vessel Transport` and `Barge Transport` discriminator object changes
        - Added `portVisitReference`,`transportCallReference`,`servicePartners`(object),`vessel`(object in vesselTransport),`barge`(object in bargeTransport)
        - Added `MMSINumber`,`flag`,`callsign` to `vessel` and `barge` objects.
        - Changed `vesselOperatorSMDGLinerCode` to `operatorCarrierCode` + `operatorCarrierCodeListProvider`
        - Changed `vesselName` to `name`
        - Changed `vesselIMONumber` length from String of 7 to String minimum length 7 and maximum length 8
        - Changed maximum length of vessel name from 35 to 50
        - Moved partner related properties `carrierCode`,`carrierCodeListProvider`,`carrierServiceName`,`carrierServiceCode`,`carrierImportVoyageNumber`,`carrierExportVoyageNumber` to the object(new) `servicePartners`
    - location object changed from discriminators for each location to an object with types of different locations as optional properties
    - Added `Next-Page-Cursor` to the response header for pagination
    - Fixed typo in `errorCodeMessage`,made mandatory and changed the maxLength from 200 -> 5000
    - Changed length of `vesselName` (now `name`) from 35 to 50
    - Removed `name` from Address Location
    - Changed `country` in `address` to `countryCode` and made mandatory.
    - Made `street` and `city` mandatory in `address`
    - Changed errorCode link to [DCSA Error Codes](https://developer.dcsa.org/standard-error-codes)
    - Added `minItems: 1` to the `Leg` array
    - `sequenceNumber` format changed from int64 to int32
    - `errorDateTime` example changed to UTC
    - `dateTime` examples changed to date time with offset
    - changed Facility SMDG Location to Facility Location and changed `facilitySMDGCode` to `facilityCode` and `facilityCodeListProvider` in `facility` in location object and added `BIC` to `facilityCodeListProvider`
    - Changed inline `Detailed Error` to object
- Port Schedules
  - Filters
    - Changed filter `port` to `UNLocationCode`
    - Added `limit` and `cursor`
  - Response
    - location object changed from discriminators for each location to an object with types of different locations as optional properties
    - Added `cutOffTimes`
    - Added `servicePartners` object (mandatory) and moved properties `carrierCode`,`carrierCodeListProvider`,`carrierServiceName`,`carrierServiceCode`,`carrierImportVoyageNumber`,`carrierExportVoyageNumber` to it
    - Added `vessel` object and moved `vesselIMONumber`,`name`(before `vesselName`),`operatorCarrierCode`,`operatorCarrierCodeListProvider` to it.
    - Added `MMSINumber`,`flag`,`callsign` to `vessel` object
    - Changed `vesselOperatorSMDGLinerCode` to `operatorCarrierCode` + `operatorCarrierCodeListProvider`
    - Changed `vesselIMONumber` length from String of 7 to String minimum length 7 and maximum length 8
    - Changed maximum length of vessel name from 35 to 50
    - Changed Timestamp array attribute name from `timestamp` to `timestamps`
    - Added `Next-Page-Cursor` to the response header for pagination
    - Fixed typo in `errorCodeMessage`,made mandatory and changed the maxLength from 200 -> 5000
    - `errorDateTime` example changed to UTC
    - Changed inline `Detailed Error` to object
    - Changed errorCode link to [DCSA Error Codes](https://developer.dcsa.org/standard-error-codes)
- Vessel Schedules
  - Filters
    - Added filter `vesselOperatorCarrierCode`
    - Added `limit` and `cursor`
  - Response
    - location object changed from discriminators for each location to an object with types of different locations as optional properties
    - Added `vessel` object and moved `vesselIMONumber`,`name`(before `vesselName`),`operatorCarrierCode`,`operatorCarrierCodeListProvider` to it.
    - Added `MMSINumber`,`flag`,`callsign` to `vessel` object
    - Added `cutOffTimes`
    - Changed `vesselOperatorSMDGLinerCode` to `operatorCarrierCode` + `operatorCarrierCodeListProvider`
    - Changed `vesselName` to `name`
    - Changed `vesselIMONumber` length from String of 7 to String minimum length 7 and maximum length 8
    - Changed maximum length of vessel name from 35 to 50
    - Changed Timestamp array attribute name from `timestamp` to `timestamps`
    - Added `Next-Page-Cursor` to the response header for pagination
    - Fixed typo in `errorCodeMessage`,made mandatory and changed the maxLength from 200 -> 5000
    - Changed length of `vesselName` (now `name`) from 35 to 50
    - Removed `name` from Address Location
    - Changed `country` in address to `countryCode` and made mandatory.
    - Made `street` and `city` mandatory in `address`
    - Changed errorCode link to [DCSA Error Codes](https://developer.dcsa.org/standard-error-codes)
    - `errorDateTime` example changed to UTC
    - Made `carrierServiceCode` mandatory
    - Changed inline `Detailed Error` to object
      
### <a name="v100B1"></a>[Release v1.0.0 Beta 1 (15 January 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_CS/1.0.0-Beta-1)
---
Initial release of the DCSA OpenAPI definitions for Commercial Schedule 1.0.0 Beta 1

