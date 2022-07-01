## OVS Domain

The OVS Domain is documented on [**OVS_DOMAIN**](https://app.swaggerhub.com/domains-docs/dcsaorg/OVS_DOMAIN) SwaggerHub.

The primary purpose of this Domain is to specify components to be used in the OVS (Operational Vessel Schedules) and JIT (Just in Time Port Calls) APIs.

<a name="v120"></a>[Release v1.2.0 (5 July 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/OVS_DOMAIN/1.2.0)
---
- Bump [DCSA_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v103) (was previously v1.0.3)
- Bump [Event_Domain to version 1.1.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v111) (was previously v1.1.1)
- Bump [Documentation_Domain to version 1.0.4](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v104) (was previously v1.0.4)
- Bump [Location_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v103) (was previously v1.0.3)

<a name="v103"></a>[Release v1.0.3 (16 November 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/OVS_DOMAIN/1.0.3)
---
- Bump [DCSA_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v103)
- Bump [Event_Domain to version 1.1.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v111)
- Bump [Documentation_Domain to version 1.0.4](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v104)
- Bump [Location_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v103)
- `facilityTypeCode` is now optional in a `TimeStamp`
- `facilitySMDGCode` and `carrierVoyageNumber` set to deprecated
- added `portCallPhaseTypeCode`, `exportVoyageNumber` and `importVoyageNumber` to the `TimeStamp` object

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
