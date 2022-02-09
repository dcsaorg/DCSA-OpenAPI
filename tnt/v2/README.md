## Track & Trace (T&T)

The DCSA Interface Standard for Track & Trace is documented on [**DCSA TNT**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_TNT) SwaggerHub.

<a name="v230"></a>[Release v2.3.0 (...)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/2.3.0)
---
Purpose of this release is to fix Stuffing and Stripping, support Booking v1 and Electronic Bill of Lading v2
- Bump [DCSA_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v200) (was previously v1.0.3)
- Bump [Event_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v200) (was previously v1.0.4)
- added new enum values to `shipmentEventTypeCode`
  - `PENC` (Pending Confirmation)
  - `CANC` (Cancelled)
- added link to GitHub for `documentTypeCode`
- fixed bug in `GET /v2/events` endPoint response: changed `anyOf` -> `oneOf`
- `facilityTypeCode` added to `TransportEvents` and `EquipmentEvents`
- the following fields have been deprecated in the `TransportCall`
  - `UNLocationCode` this is covered by the `UNLocationCode` in the `location` object
  - `facilityCode` this is covered by the `facilityCode` in the `location` object
  - `facilityCodeListProvider` this is covered by the `facilityCodeListProvider` in the `location` object
  - `otherFacility` this is covered by the `address` object in the `location` object
  - `facilityTypeCode` this has been moved to `TransportEvent` and `EquipmentEvent` root-level
- added new enum values to `referenceType`
  - `ECR` (Empty container release reference)
  - `CSI` (Customer shipment ID)
  - `BPR` (Booking party reference number)
  - `BID` (Booking Request ID)
- added link to GitHub for `referenceType`
- `documentReferences` added to the `ShipmentEvent`
- added new enum values to `shipmentEventTypeCode`
  - `PENC` (Pending Confirmation)
  - `CANC` (Cancelled)
- `reason` field size limited to 250 in `ShipmentEvent`
- modified the description of the deprecated `transportDocumentTypeCode` subscription filter for the `ShipmentEvents`
- added new enum values to `documentReferenceType`
  - CBR (Carrier Booking Request Reference)
  - SHI (Shipping Instruction ID)
- fixed enum values for `documentReferenceType` as they wrongly contained the description as part of the enum value


<a name="v220"></a>[Release v2.2.0 (28 October 2021)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/2.2.0)
---
Purpose of this release is to add the new subscription model to T&T
- Bump [DCSA_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v103) (was previously v1.0.1)
- Bump [Event_Domain to version 1.0.4](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v104) (was previously v1.0.1)
- `documentTypeCode`, `exportVoyageNumber` and `UNLocationCode` added as filter to the `GET /v2/events` endPoint and added as filter in subscriptions
- `transportDocumentTypeCode` query parameter filter has been removed from the `GET /v2/events` endPoint and from the Subscription
- added `sort` as a queryParameter to both `GET /v2/events` and `GET /v2/event-subscriptions` endPoints in order to sort the end result
- Prefixed all endPoints with `/v2` in order to align with Design Guide
- Added `PUT /event-subscriptions/{subscriptionID}/secret` endPoint to update the shared secret used to create the `Notification-Signature`
- added `transportCallSequenceNumber` to the `TransportCall`

<a name="v212"></a>[Release v2.1.2 (4 October 2021)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/2.1.2)
---
This is a patch including some forgotten values for v2.1.1
- `PICK`, `DROP`, `INSP`, `RSEA` and `RMVD` added to `EquipmentEventTypeCode`
- `RAMP` added as `facilityTypeCode` in `TransportCall` in both `TransportEvent` and `EquipmentEvent`

<a name="v211"></a>[Release v2.1.1 (18 August 2021)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/2.1.1)
---
- Fixes an error introduced in [Release v2.1.0](#v210) that preventing the API from being downloaded on SwaggerHub

<a name="v210"></a>[Release v2.1.0 (3 August 2021)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/2.1.0)
---
- API Description updated
- changed definition of array-queryParameters (ex: eventType). This is now a comma (,) separated list
- Added limit and cursor queryParameter to `GET /events` and `GET /event-subscriptions`
- Added `API-Version` header to **all** endPoint responses
- Added `Current-Page`, `Next-Page`, `Prev-Page`, `Last-Page` and `First-Page` headers to `GET /events` and `GET /event-subscriptions` responses
- Added default error handling in `GET /event-subscriptions`
- Deprecated the `events/{eventID}` endPoint
- Split subscription body in 2:
  - One used for `POST /event-subscriptions` calls which includes the secret
  - One without the secret used for `GET /event-subscriptions/{subscriptionID}` and `PUT /event-subscriptions/{subscriptionID}`
- Callbacks updated:
  - Deprecated the `Signature` header as the new `Notification-Signature` is to be used instead
  - Added `Subscription-ID` header to include the subscriptionID causing the Event to be sent
  - Added `Notification-Signature` header which is the new Signature used to validate the authenticity of the Event
  - Added `API-Version` header to include the version of API **sending the event**

<a name="v201"></a>[Release v2.0.1](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/2.0.1)
---
This is supposed to be a Major update correcting errors - but at the time this API was released no one had started implementing v2.0.0 so it was decided "just" to make this a patch release

- `transportCallID` removed from ShipmentEvents
- `shipmentID` is re-introduced into ShipmentEvents
- `transportCallID` made mandatory on EquipmentEvents
- spelling mistake fixed in `errorDateTime`
- `eventID` format changed from string -> UUID
- `scheduleID` changed from number -> UUID
- `transportCallID` changed from number -> UUID

<a name="v200"></a>[Release v2.0.0](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/2.0.0)
---
#### Dependencies between Track and Trace and Operational Vessel Schedules APIs
In the [Information Model 2.0](https://dcsa.org/wp-content/uploads/2020/07/DCSA-Information-model-2.0-vF.pdf), details about locations have been removed from T&T events, and added to transport calls. Instead of containing location details, events contain a reference to a transport call. Transport calls are a part of the [OVS 1.0 API](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS/1.0.1), which means that the [Track & Trace](https://app.swaggerhub.com/apis/dcsaorg/DCSA_TNT) [v2.0.0](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/2.0.0) and [v2.0.1](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/2.0.1) APIs depends on functionality from the [OVS] (https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_OVS) API.

- Updated event structure to use Transport Calls
- Added Pagination
- Added Signature header to callbacks
