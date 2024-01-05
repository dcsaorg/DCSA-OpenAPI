### Electronic Bill of Lading (EBL) API

The DCSA Electronci Bill of Lading API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL).

Publications related to the Bill of Lading API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website
- [Bill of Lading](https://dcsa.org/standards/ebill-of-lading/) contains documents and publications
- [Bill of Lading Notification API](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_NTF) maintained on SwaggerHub and is the Notification API linked to the Bill of Lading
- ["What's New" in Bill of Lading Notification](./notification/) maintained here on GitHub
- [Bill of Lading Issuance API](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_ISS) maintained on SwaggerHub and Issuance API linked to the Bill of Lading
- ["What's New" in Bill of Lading Issuance](./issuance/) maintained here on GitHub
- [Bill of Lading Surrender API](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL_SUR) maintained on SwaggerHub and Surrender API linked to the Bill of Lading
- ["What's New" in Bill of Lading Surrender](./surrender/) maintained here on GitHub

<a name="v300B1"></a>[Release v3.0.0 Beta 1 (28 December 2023)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL/3.0.0-Beta-1)
---
Beta 1 release of the DCSA OpenAPI definitions for Bill of Lading 3.0.0. This release adds `Active Reefer Settings` (Phase 1) and `Dangerous Goods`. It removes the Events endPoint and now supports the Notification pattern.

- Bump [Documentation_Domain to version 3.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v300) (was previously v2.1.0)
- Bump [Error_Domain to version 3.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/error#v300) (was previously v2.0.0)
- Bump [DCSA_Domain to version 3.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v310) (was previously v2.0.3)
- Event_Domain no longer needed
- Check above Domains to see changes of objects since last version
- `summary`-endPoints removed
- amendment flow changed.
  - amendments to `ActiveReeferSettings` and `Dangerous Goods` must be done via a `Booking Amendment`.
  - amendments to a `Shipping Instructions` must be done via an `Shipping Instructions update` and can be monitored via the `updatedShippingInstructionsStatus` status property
- `events` endPoint removed and a notification API added to support Push Notifications
- multiple examples added to most endPoints
- descriptions improved to all endPoints explaining flows
