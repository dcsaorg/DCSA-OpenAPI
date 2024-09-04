# Commercial Schedule (CS) API

The DCSA Commercial Schedules API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_CS).

### <a name="v100B1"></a>[Release v1.0.0 (24 September 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_CS/1.0.0)
---

## Key changes
- `cutOffTimes` added to all the three endpoints
- `modeOfTransport` modified for point-to-point routings endpoint
- changed `vesselOperatorSMDGLinerCode` --> `operatorCarrierCode` + `operatorCarrierCodeListProvider`
- locations are handled differently going forward. Locations are no longer defined using a `oneOf` but rather via optional properties.

## All changes
- Point to Point
  - Filters
    - `departureDateTime` changed to `departureStartDate`,`departureEndDate`
    - `arrivalDateTime` changed to `arrivalStartDate`,`arrivalEndDate`
    - `isTranshipment` changed to `maxTranshipment`($int32)
  - Response
    - Added `receiptTypeAtOrigin`,`receiptTypeAtDestination`,`cutOffTimes`,`solutionNumber` to the response
    - `transitTime` format changed from $int64 to $int32
    - `facilitySMDGCode` splitted to `facilityCode` and `facilityCodeListProvider`(BIC,SMDG)
    - `dateTime` to be expressed in local time with offset (YYYY-MM-DDTHH:MM:SS±HH:MM)
      - with exception of errorDateTime which is in UTC without offset.
    - changed `modeOfTransport` to `transport` object and moved transport related information to the transport object with discrimators of different transport mode.
      - Added `RAIL_TRUCK`,`BARGE_TRUCK`,`BARGE_RAIL`,`MULTIMODAL` to `modeOfTranport`,now supports `VESSEL`,`BARGE`,`TRUCK`,`RAIL`,`RAIL_TRUCK`,`BARGE_TRUCK`,`BARGE_RAIL`,`MULTIMODAL`
      - discriminators added to `transport` object to limit additional details depending on the `modeOfTransport`
        - Vessel Transport → modeOfTransport [`VESSEL`]
        - Barge Transport → modeOfTransport [`BARGE`]
        - Barge Transport → modeOfTransport [`RAIL_TRUCK`,`BARGE_TRUCK`,`BARGE_RAIL`,`MULTIMODAL`]
      - `Vessel Transport` and `Barge Transport` discriminator object changes
        - Added `portVisitReference`,`transportCallReference`,`servicePartners`(object),`vessel`(object in vesselTransport),`barge`(object in bargeTransport)
        - Added `MMSINumber`,`flag`,`callsign` to `vessel` and `barge` objects.
        - Changed `vesselOperatorSMDGLinerCode` to `operatorCarrierCode` + `operatorCarrierCodeListProvider`
        - Changed `vesselName` to `name`
        - Changed `vesselIMONumber` length from String of 7 to String minimum length 7 and maximum length 8
        - Changed maximum length of vessel name from 35 to 50
        - Moved partner related properties `carrierCode`,`carrierCodeListProvider`,`carrierServiceName`,`carrierServiceCode`,`carrierImportVoyageNumber`,`carrierExportVoyageNumber` to the object(new) `servicePartners`
    - location object changed from discriminators for each location to an object with types of different locations as optional properties
    - Added `cutOffTimes`
- Port Schedules
  - Filters
    - Changed filter `port` to `UNLocationCode`
  - Response
    - location object changed from discriminators for each location to an object with types of different locations as optional properties
    - Added `cutOffTimes`
    - Added `servicePartners` object and moved properties `carrierCode`,`carrierCodeListProvider`,`carrierServiceName`,`carrierServiceCode`,`carrierImportVoyageNumber`,`carrierExportVoyageNumber` to it
    - Added `vessel` object and moved `vesselIMONumber`,`name`(before `vesselName`),`operatorCarrierCode`,`operatorCarrierCodeListProvider` to it.
    - Added `MMSINumber`,`flag`,`callsign` to `vessel` object
    - Changed `vesselOperatorSMDGLinerCode` to `operatorCarrierCode` + `operatorCarrierCodeListProvider`
    - Changed `vesselIMONumber` length from String of 7 to String minimum length 7 and maximum length 8
    - Changed maximum length of vessel name from 35 to 50
- Vessel Schedules
  - Filters
    - Added filter `vesselOperatorCarrierCode`
  - Response
    - location object changed from discriminators for each location to an object with types of different locations as optional properties
    - Added `vessel` object and moved `vesselIMONumber`,`name`(before `vesselName`),`operatorCarrierCode`,`operatorCarrierCodeListProvider` to it.
    - Added `MMSINumber`,`flag`,`callsign` to `vessel` object
    - Added `cutOffTimes`
    - Changed `vesselOperatorSMDGLinerCode` to `operatorCarrierCode` + `operatorCarrierCodeListProvider`
    - Changed `vesselName` to `name`
    - Changed `vesselIMONumber` length from String of 7 to String minimum length 7 and maximum length 8
    - Changed maximum length of vessel name from 35 to 50
      
### <a name="v100B1"></a>[Release v1.0.0 Beta 1 (15 January 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_CS/1.0.0-Beta-1)
---
Initial release of the DCSA OpenAPI definitions for Commercial Schedule 1.0.0 Beta 1

