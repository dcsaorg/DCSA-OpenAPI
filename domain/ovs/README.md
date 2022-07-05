## OVS Domain

The OVS Domain is documented on [**OVS_DOMAIN**](https://app.swaggerhub.com/domains-docs/dcsaorg/OVS_DOMAIN) SwaggerHub.

The primary purpose of this Domain is to specify components to be used in the OVS (Operational Vessel Schedules) and JIT (Just in Time Port Calls) APIs.

<a name="v120"></a>[Release v1.2.0 (5 July 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/OVS_DOMAIN/1.2.0)
---
Because of historical reasons this Domain is still called OVS - even though it is currently only linked to JIT

- Bump [DCSA_Domain to version 2.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v202) (was previously v1.0.3)
- Bump [Event_Domain to version 2.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v202) (was previously v1.1.1)
- Bump [ to version 1.0.4](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v104) (was previously v1.0.4)
- Bump [Location_Domain to version 2.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v202) (was previously v1.0.3)
- Documentation_Domain not bumped as the `Party` object needs to be the same
- `publisherRole` example updated to use `CA` (Carrier)
- `vesselIMONumber` has been deprecated on the timestamp - `vesselIMONumber` in the `vessel` object should be used instead
- a `vessel` object has been added to the timestamp with the following fields:
  - `vesselIMONumber` as a mandatory field
  - `name`
  - `lengthOverall`
  - `width`
  - `callSign`
  - `type` being one of the following values (`GCGO`, `CONT`, `RORO`, `CARC`, `PASS`, `FERY`, `BULK`, `TANK`, `LGTK`, `ASSI` or `PILO`)
  - `draft`
  - `dimensionUnit`
- `importVoyageNumber` and `exportVoyageNumber` have both been deprecated, `carrierImportVoyageNumber` and `carrierExportVoyageNumber` should be used instead
- `portVisitReference` added
- `vesselPosition` now uses the geo-location-interface and example updated
- `UNLocationCode` description and exampe updated
- `facilityCodeType` description updated
- `eventLocation` now used the location-interfaces (all of them in order to be backward compatible) and the example is updated
- `milesToDestinationPort` added and example set to **0** miles in order to make sense in the timestamp example presented
- `eventClassifierCode` description updated
- `operationsEventTypeCode` updated with `OMIT` (Omitted) and `CANC` (Cancelled) and the description has been updated
- `modeOfTransport` is now deprecated
- `portCallPhaseTypeCode` description updated
- `portCallServiceTypeCode` description updated
- `delayReasonCode` example updated to fit `reason`-example

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
