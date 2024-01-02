### Electronic Bill of Lading (EBL) API

The DCSA Interface Standard for Electronci Bill of Lading is documented on the [**DCSA EBL SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL).

Publications related to this specification can be found on the DCSA website:
- [Electronic Bill of Lading 3.0 Beta 1](https://dcsa.org/standards/ebill-of-lading/)
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary)

<a name="v300B1"></a>[Release v3.0.0 Beta 1 (28 December 2023)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL/3.0.0-Beta-1)
---
Beta 1 release of the DCSA OpenAPI definitions for Bill of Lading 3.0.0. This release adds Active Reefer Settings (Phase 1) and Dangerous Goods

- Bump [Documentation_Domain to version 3.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v300) (was previously v2.1.0)
- Bump [DCSA_Domain to version 3.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v310) (was previously v2.0.3)
- Event_Domain no longer needed
- **will be updated**
- 
- Bump [Error_Domain to version 3.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/error#v300) (was previously v2.0.0)
- Event_Domain no longer used
- Check above Domains to see changes of objects since last version
- `summary`-endPoints removed
- `Booking Request` and `Shipment` endPoint consolidated into one GET endPoint
- amendment flow improved. It is now possible to follow the status of an amendment via the `amendedBookingStatus`
- `events` endPoint removed and a notification API added to support Push Notifications
- multiple examples added to most endPoints
- descriptions improved to all endPoints explaining flows
