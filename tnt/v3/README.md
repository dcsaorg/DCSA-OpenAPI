## Track & Trace (T&T)

The DCSA Interface Standard for Track & Trace is documented on [**DCSA TNT**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_TNT) SwaggerHub.

<a name="v300"></a>[Release v3.0.0-Beta-1 (...)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/3.0.0-Beta-1)
---
Major changes are the following:
- Restructured the `Event` in a `metadata` section and a `payload` section
- Retracted events are no possible using the `retractedEventID`
- Locations have been changed from a `anyOf` to a `oneOf`
- It is optional to implement the subscription part

A detailed list of changes (please visit the updated domains for further changes):

- Bump [DCSA_Domain to version 3.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v300) (was previously v2.0.3)
- Bump [Event_Domain to version 3.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v310) (was previously v1.0.4)
- Bump [Error_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/error#v200) (was previously v1.0.0)
- API description updated
- `v2` version updated to `v3`
- 'event-structure' has changed. Instead of being flat it now consists of a 'common' `metadata` part and a 'specialized' `payload` part
- `/v3/events` endPoint updated:
  - description updated to be more markdown compliant. The endPoint is mandatory to implement
  - `eventType` filter renamed to `eventTypes`, description updated and default value added including all values (`SHIPMENT`, `TRANSPORT` and `EQUIPMENT`)
  - `documentTypeCode` filter renamed to `documentTypeCodes`
  - `shipmentEventTypeCode` filter renamed to `shipmentEventTypeCodes`
  - `documentReference` filter added as a generic way to filter on references to different documentTypes
  - `carrierBookingReference` and `transportDocumentReference` removed as they have been replaced with the more generic `documentReference`
  - deprecated filters removed (`bookingReference`, `transportDocumentID`, `transportCallID` and `scheduleID`)
  - `transportEventTypeCode` filter renamed to `transportEventTypeCodes`
  - `equipmentEventTypeCode` filter renamed to `equipmentEventTypeCodes`
  - `universalServiceReference`, `carrierImportVoyageNumber`, `universalImportVoyageReference`, `carrierExportVoyageNumber` and `universalExportVoyageReference` filters added
  - `
  
  
  - `eventDateTime` filter parameter added
  - `documentReference` added to support filtering for all references belonging to `shipmentEventTypeCodes`
  - `transportCallID` replaced with `transportCallReference`
  - `exportVoyageNumber` replaced with `carrierExportVoyageNumber` and `universalVoyageReference`
  - `universalServiceReferemnce` added
  - `cursor` queryParameter removed as pagination is implementation specific
  - response payload change to be a list of events rather than an `anyOf` events
  - added 3 examples:
    - Events related to Booking: 'ABC123059'
    - Equipment Events that are DROP (Drop-off) or PICK (Pick-up)
    - List of Transport Events
- `/v3/events/{eventID}` endPoint updated:
  - 'un-deprecated' the endPoint
  - response payload change to be an event rather than an `oneOf`
  - discriminator definition removed as `eventType` has been moved into the metadata object and SwaggerHub does not support discriminators located in nested objects
  - added 3 examples:
    - Shipment Event
    - Equipment Event as part of a transshipment
    - Retracted Transport Event
- removed the `cursor` queryParameter from the `/v3/event-subscriptions` endPoint
- description updated to be more markdown compliant
- callBack description updated and the response payload is now a list of events and not a `oneOf`
- `eventTypes` description updated
- emphasized that the `secret` field is only valid in `POST` subscription calls
