## Error Domain

The Error Domain is documented on [**Error Domain SwaggerHub**](https://app.swaggerhub.com/domains-docs/dcsaorg/ERROR_DOMAIN).

The purpose of this Domain is to specify the error object to return in any API endPoint in case an error occurs.

<a name="v200"></a>[Release v2.0.0 (23 December 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/ERROR_DOMAIN/2.0.0)
---
Breaking changes fixed

- maximum value for `errorCode` changed from 7999->9999
- `field` description updated to allow the field to be express as a JSONpath
- `requestUri` format `uri` removed from the type so now it is just a string

<a name="v110"></a>[Release v1.1.0 (6 April 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/ERROR_DOMAIN/1.1.0)
---
New and extended error object to be used going forward.

- Metadata for the Domian updated
- Internal reordering of the objects
- extra details added to the error(s)
  - `errorCode` a machine readable code specifying what is wrong. The codes have not yet been agreed. Once agreed they will be located in [DCSA Error Codes](https://github.com/dcsaorg/DCSA-Information-Model/blob/master/datamodel/referencedata.d/errorcodes.csv)
  - `field` the field that caused the error
  - `value` the value causing the error
  - `message` field description updated and better example added
  - `reason` limited to string(100)
  - `message` limited to string(200)
- `httpMethod` changed from string `->` enum
- `requestUri` description updated and format `uri` added
- `statusCode` format `int32` added
- `statusCodeText` description updated and size limited to string(50)
- `errorMessage` added as an optional field
- `providerCorrelationId` a unique identifier for the transaction
- fixed format for `errorDateTime`
- added a required minimum size of the error list to 1

<a name="v100"></a>[Release v1.0.0 (30 June 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/ERROR_DOMAIN/1.0.0)
---
- Domain created and released
