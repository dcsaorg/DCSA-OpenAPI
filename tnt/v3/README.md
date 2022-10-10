## Track & Trace (T&T)

The DCSA Interface Standard for Track & Trace is documented on [**DCSA TNT**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_TNT) SwaggerHub.

<a name="v300"></a>[Release v3.0.0-Beta-1 (...)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/3.0.0-Beta-1)
---
Next T&T release - to be updated...

- Bump [DCSA_Domain to version 2.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v203) (was previously v1.0.3)
- Bump [Event_Domain to version 3.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v300) (was previously v1.0.4)
- Bump [Error_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/error#v110) (was previously v1.0.0)
- API description updated
- `v2` version updated to `v3`
- `/v3/events` endPoint updated:
  - description updated to be more markdown compliant
  - deprecated filters removed (`bookingReference`, `transportDocumentID`, `carrierVoyageNumber` and `scheduleID`)
  - `eventDateTime` filter parameter added
  - `eventType` filter description updated and default value added including all values (`SHIPMENT`, `TRANSPORT` and `EQUIPMENT`)
  - `carrierBookingReference` and `transportDocumentReference` removed as they have been replaced with the more generic `documentReference`
  - `documentReference` added to support filtering for all references belonging to `shipmentEventTypeCodes`
  - `transportCallID` replaced with `transportCallReference`
  - `exportVoyageNumber` replaced with `carrierExportVoyageNumber` and `universalVoyageReference`
