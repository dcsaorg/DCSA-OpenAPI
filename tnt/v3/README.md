## Track & Trace (T&T)

The DCSA Interface Standard for Track & Trace is documented on [**DCSA TNT**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_TNT) SwaggerHub.

<a name="v300"></a>[Release v3.0.0-Beta-1 (31 March 2023)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/3.0.0-Beta-1)
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
  - `eventDateTime` filter parameter added
  - `eventType` filter renamed to `eventTypes`, description updated and default value added including all values (`SHIPMENT`, `TRANSPORT` and `EQUIPMENT`)
  - `documentTypeCode` filter renamed to `documentTypeCodes`
  - `shipmentEventTypeCode` filter renamed to `shipmentEventTypeCodes`
  - `documentReference` filter added as a generic way to filter on references to different documentTypes (`shipmentEventTypeCodes`)
  - `carrierBookingReference` and `transportDocumentReference` removed as they have been replaced with the more generic `documentReference`
  - deprecated filters removed (`bookingReference`, `transportDocumentID` and `scheduleID`)
  - `transportEventTypeCode` filter renamed to `transportEventTypeCodes`
  - `equipmentEventTypeCode` filter renamed to `equipmentEventTypeCodes`
  - `universalServiceReference`, `carrierImportVoyageNumber`, `universalImportVoyageReference`, `carrierExportVoyageNumber` and `universalExportVoyageReference` filters added
  - `exportVoyageNumber` replaced with `carrierExportVoyageNumber` and `universalVoyageReference`
  - `carrierVoyageNumber` removed
  - `transportCallID` replaced with `transportCallReference`
  - `cursor` and `offset` queryParameters removed as pagination is implementation specific
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
    - Rail-TransportCall Transport event
    - Truck-TransportCall Transport event
    - Retracted Transport Event
- `/v3/event-subscriptions` endPoint updated:
  - GET description updated. This endPoint is optional to implement
    - removed the `cursor` and `offset` queryParameter
    - added a `501` (Not Implemented) error response
  - POST description updated. This endPoint is optional to implement
    - added a `501` (Not Implemented) error response
- `callbackUrl` endPoint updated:
  - description updated
  - payload has been changed to be an event rather than an `oneOf`
- `/v3/event-subscriptions/{subscriptionID}`
  - GET description updated. This endPoint is optional to implement
    - added a `501` (Not Implemented) error response
  - DELETE description updated. This endPoint is optional to implement
    - added a `501` (Not Implemented) error response
  - PUT description updated. This endPoint is optional to implement
    - added a `501` (Not Implemented) error response
- `/v3/event-subscriptions/{subscriptionID}/secret:`
  - PUT description updated. This endPoint is optional to implement
    - added a `501` (Not Implemented) error response
- `eventTypes` description updated
- emphasized that the `secret` field is only valid in `POST` subscription calls
- `subscriptionCreatedDateTime` and `subscriptionUpdatedDateTime` added to the subscription response payload
