### Booking (BKG) API

The DCSA Booking API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_BKG).

Publications related to the Booking API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website
- [Booking Process](https://dcsa.org/standards/booking-process/) contains documents and publications
- [Booking Notification API](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG_NTF) maintained on SwaggerHub and is the Notification API linked to the Booking process
- [Booking Notification specification](./notification/) maintained here on GitHub

<a name="v200B1"></a>[Release v2.0.0 Beta 1 (28 December 2023)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/2.0.0-Beta-1)
---
Beta 1 release of the DCSA OpenAPI definitions for Booking 2.0.0. This release adds `Active Reefer Settings` and `Dangerous Goods`. It improves the amendment flow. It removes the Events endPoint and now supports the Notification pattern.

- Bump [Documentation_Domain to version 3.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v300) (was previously v2.1.0)
- Bump [Error_Domain to version 3.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/error#v300) (was previously v2.0.0)
- Event_Domain no longer used
- Check above Domains to see changes of objects since last version
- `summary`-endPoints removed
- `Booking Request` and `Shipment` endPoint consolidated into one GET endPoint
- amendment flow improved. It is now possible to follow the status of an amendment via the `amendedBookingStatus`
- `events` endPoint removed and a notification API added to support Push Notifications
- multiple examples added to most endPoints
- descriptions improved to all endPoints explaining flows
