### Booking (BKG) API

The DCSA Interface Standard for Booking is documented on the [**DCSA BKG SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_BKG).

Publications related to this specification can be found on the DCSA website:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary)
- [Booking Process](https://dcsa.org/standards/booking-process/)

<a name="v200B1"></a>[Release v2.0.0 Beta 1 (28 December 2023)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/2.0.0-Beta-1)
---
Beta 1 release of the DCSA OpenAPI definitions for Booking 2.0.0. This release adds `Active Reefer Settings` and `Dangerous Goods`. It improves the amendment flow

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
