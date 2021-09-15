<a name="v103"></a>Release v1.0.3 (unreleased)
-------------------------------
- Bump [Event_Domain to version 1.1.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v111)
- Bump [Documentation_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/documentation/documentation_domain_v1.0.3.yaml)
  - this will update the `Party` object to include the `codeListName` in the `identifiers` as it is needed in order to distinguish between different SMDG codes

<a name="v102"></a>Release v1.0.2 (31 August 2021)
-------------------------------
- Bump [Event_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/event/dcsa_event_v1.0.3.yaml)
- Bump [Documentation_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/documentation/documentation_domain_v1.0.3.yaml)

<a name="v101"></a>Release v1.0.1 (26 August 2021)
-------------------------------
- Bump [DCSA_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/dcsa/dcsa_domain_v1.0.2.yaml)
- Bump [Documentation_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/documentation/documentation_domain_v1.0.2.yaml)
- Bump [Event_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/event/dcsa_event_v1.0.2.yaml)
- Bump [Location_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/location/dcsa_location_v1.0.2.yaml)
- `publisherRole` now referring to definition defined in Event_Domain instead of an extended version of the `partyFunction` object
- `eventClassifierCode` object fixed (object information was missing)
- Adding the following missing fields on the Timestamp object:
  - `carrierVoyageNumber` mandatory field
  - `carrierServiceCode` mandatory field
  - `transportCallSequenceNumber` optional field
  - `remark` optional field
  - `delayReasonCode` optional field
- update description (remove wrong link to T&T)

<a name="v100"></a>Initial release v1.0.0
----------------------
- Domain created
