### Booking Notification (BKG_NTF) API

The DCSA Booking Notification API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_BKG_NTF).

Publications related to the Booking Notification API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website
- [Booking Process](https://dcsa.org/standards/booking-process/) contains documents and publications
- [Booking](./../) maintained here on GitHub

<a name="v200B2"></a>[Release v2.0.0 Beta 2 (12 April 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG_NTF/2.0.0-Beta-2)
---
Beta 2 release of the DCSA OpenAPI definitions for Booking Notifications 2.0.0-Beta-2
## Business changes:
This is a list of high-level business changes:
- No business changes in this version
## Technical changes:
This is a list of high-level technical changes:
- The API is now developed using ShopLight instead of SwaggerHub-editor. This means that we are no longer using Domains but now have everything defined inline.
- As a new principle:
  - no $ref pointing outside the yaml file
  - all `simpleTypes` are now specified "inline" in objects
  - all `objects` are now PascalCased and have a `title` property set with a presentable version of the object name in Title Case (all representations of snake_case or Pascal_Snake_Case have been removed)
- all strings having a pattern that matches `^\S+(\s+\S+)*$` have been changed to `\S(?:.*\S)?$` in order to prevent [Catastrophic Backtracking](https://www.regular-expressions.info/catastrophic.html)
## List of detailed changes
- API description has been updated with new links (including Stats API).
- `subscriptionReference` has been added to the metadata section on both `BookingNotification`
- `carrierBookingReference` and `carrierBookingRequestReference` patterns changed form `^\S+(\s+\S+)*$` to `\S(?:.*\S)?$` in order to prevent [Catastrophic Backtracking](https://www.regular-expressions.info/catastrophic.html)

<a name="v200B1"></a>[Release v2.0.0 Beta 1 (28 December 2023)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG_NTF/2.0.0-Beta-1)
---
Initial release of the DCSA OpenAPI definitions for Booking Notifications 2.0.0-Beta-1.
