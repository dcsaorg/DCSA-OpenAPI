## Error Domain

The Error Domain is documented on [**Error Domain SwaggerHub**](https://app.swaggerhub.com/domains-docs/dcsaorg/ERROR_DOMAIN).

The purpose of this Domain is to specify the error object to return in any API endPoint in case an error occurs.

<a name="v110"></a>[Release v1.1.0 (06 April 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/ERROR_DOMAIN/1.1.0)
---
The APIs for Booking v1.0 Beta 1 and EBL v2.0 Beta 1 both use this version of the Domain

**NB**: Not updated yet...

- Internal reordering of the objects
- extra details added to the error(s)
  - `errorCode` a machine readable code specifying what is wrong. Please visit [DCSA Error Codes (not created yet)](https://dcsa.org) for an exhaustive list
  - `field` the field that caused the error
  - `value` the value causing the error
  - `message` field description updated and better example added
- `httpMethod` changed from string `->` enum
- `requestUri` description updated and format `uri` added
- `statusCodeText` description updated
- `errorMessage` added as an optional field
- `providerCorrelationId` a unique identifier for the transaction
- fixed format for `errorDateTime`
- added a required minimum size of the error list to 1

<a name="v100"></a>[Release v1.0.0 (30 June 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/ERROR_DOMAIN/1.0.0)
---
- Domain created and released
