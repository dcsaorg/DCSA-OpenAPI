### Booking Notification (BKG_NTF) API

The DCSA Booking Notification API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_BKG_NTF).

Publications related to the Booking Notification API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website
- [Booking Process](https://dcsa.org/standards/booking-process/) contains documents and publications
- [Booking](./../) maintained here on GitHub

<a name="v200B2"></a>[Release v2.0.0 Beta 2 (12 April 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG_NTF/2.0.0-Beta-2)
---
- Minor details to the API description have been updated.
- `subscriptionReference` has been added to the metadata section on both `ShippingInstructionsNotification` and `TransportDocumentNotification`
- `shippingInstructionsReference` and `transportDocumentReference` patterns changed form `^\S+(\s+\S+)*$` to `\S(?:.*\S)?$` in order to prevent [Catastrophic Backtracking](https://www.regular-expressions.info/catastrophic.html)

<a name="v200B1"></a>[Release v2.0.0 Beta 1 (28 December 2023)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG_NTF/2.0.0-Beta-1)
---
Initial release of the DCSA OpenAPI definitions for Booking Notifications 2.0.0-Beta-1.
