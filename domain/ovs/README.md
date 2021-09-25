## OVS Domain

The OVS Domain is documented on [**OVS_DOMAIN**](https://app.swaggerhub.com/domains-docs/dcsaorg/OVS_DOMAIN) SwaggerHub.

The primary purpose of this Domain is to specify components to be used in the OVS API. This Domain defines the Timestamp object used in JIT (Just in Time Port Calls).

<a name="v103"></a>[Release v1.0.3 (unreleased)](https://app.swaggerhub.com/domains-docs/dcsaorg/OVS_DOMAIN/1.0.3)
---
- Bump [Event_Domain to version 1.1.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v111)
- Bump [Documentation_Domain to version 1.0.4](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v104)
  - this will update the `Party` object to include the `codeListName` in the `identifiers` as it is needed in order to distinguish between different SMDG codes
- `facilityTypeCode` is now optional in a `TimeStamp`

<a name="v102"></a>[Release v1.0.2 (31 August 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/OVS_DOMAIN/1.0.2)
---
- Bump [Event_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v103)
- Bump [Documentation_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v103)

<a name="v101"></a>[Release v1.0.1 (26 August 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/OVS_DOMAIN/1.0.1)
---
- Bump [DCSA_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v102)
- Bump [Documentation_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v102)
- Bump [Event_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v102)
- Bump [Location_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v102)
- `publisherRole` now referring to definition defined in Event_Domain instead of an extended version of the `partyFunction` object
- `eventClassifierCode` object fixed (object information was missing)
- Adding the following missing fields on the Timestamp object:
  - `carrierVoyageNumber` mandatory field
  - `carrierServiceCode` mandatory field
  - `transportCallSequenceNumber` optional field
  - `remark` optional field
  - `delayReasonCode` optional field
- update description (remove wrong link to T&T)

<a name="v100"></a>[Initial release v1.0.0](https://app.swaggerhub.com/domains-docs/dcsaorg/OVS_DOMAIN/1.0.0)
---
- Domain created
