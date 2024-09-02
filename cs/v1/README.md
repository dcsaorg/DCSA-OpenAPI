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
    - 
    - 
### <a name="v100B1"></a>[Release v1.0.0 Beta 1 (15 January 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_CS/1.0.0-Beta-1)
---
Initial release of the DCSA OpenAPI definitions for Commercial Schedule 1.0.0 Beta 1

