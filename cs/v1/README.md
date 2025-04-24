# Commercial Schedule (CS) API

The DCSA Commercial Schedules API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_CS).

<a name="v101"></a>[Release v1.0.1 (25 April 2025)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_CS/1.0.1)
---
This is a patch release for the DCSA Commercial Schedules API. The primary purpose of this patch is to include the `routingReference` property in the Point-to-point responses in order to be able to reference a route in [Booking](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/bkg/v2). Here is a list of changes

- `routingReference` property added to the PointToPoint object.
- `maxTranshipment` query parameter description imporved to explain meaning of a "transhipment"
- `facilitySMDGCode` query parameter description improved
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
- Point to Point
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

