### Just in Time (JIT)

The DCSA Interface Standard for Just in Time Portcalls is documented on the **[DCSA JIT](https://app.swaggerhub.com/apis/dcsaorg/DCSA_JIT) SwaggerHub**.

<a name="v120B1"></a>[Release v1.2.0 Beta 1 (5 July 2022)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/1.2.0-Beta-1)
---
This is a minor release adding a lot of extra timestamps

- Bump [Event_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v201) (was previously v1.1.1)
- Bump [DCSA_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v201) (was previously v1.0.3)
- Bump [OVS_Domain to version 1.2.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/ovs#v120) (was previously v1.0.3)
- API description updated
- check domain links above to see what has also changed in this version - some if the items include:
  - `OMIT` and `CANC` added to `OperationsEventTypeCode`
  - added entire `Vessel` object to the timestamp
  - renamed `[import/export]VoyageNumber` --> `carrier[Import/Export]VoyageNumber`
  - added `universal[Import/Export]VoyageReference`
  - added `portVisitReference`
  - added `milesToDestinationPort`
  - all locations are now based on location-interfaces
  - `ANCO`, `SLUG`, `SHPW`, `LCRO`, `DCRO`, `VRDY` added to `portCallServiceTypeCode`
  - `MOR`, `SLU` and `SVP` added to `publisherRole`
  - `ANCH` added to `facilityTypeCode`
  - `transportCall` now required in the `OperationsEvent`
  
<a name="v110"></a>[Release v1.1.0 (16 November 2021)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/1.1.0)
---
- Description updated
- Bump [Event_Domain to version 1.1.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v111)
- Bump [DCSA_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v103)
- Bump [OVS_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/ovs#v103)
- renamed internal representation of the `TransportEvent` used in OVS: `OperationsTransportEvent` -> `TransportEvent`
- `UNLocationCode` and `exportVoyageNumber` filter added to `GET /v2/events endPoint`
- `carrierVoyageNumber` is now a deprecated filter
- `sort` queryParameter added to `GET /v2/events endPoint`
- specialized example removed from `GET /v2/events` endPoint - now Swaggerhub default is used again
- check domain links above to see what has also changed in this version - some if the items include:
  - `TWG` (Towage), `LSH` (Lashing) and `BUK` (Bunker) added to `publisherRole`
  - `LASH` (Lashing), `SAFE` (Safety), `FAST` (All Fast) and `GWAY` (Gangway down and secure) added to `portCallServiceTypeCode`
  - `portCallServiceTypeCode` now optional in `OperationsEvents`
  - globally defined `facilityTypeCodeOPR` used instead of locatlly defined version
  - `PICK`, `DROP`, `INSP`, `RSEA` and `RMVD` added to `EquipmentEventTypeCode` it was forgotten in previous version
  - `facilitySMDGCode` is deprecated - `facilityCode` together with `facilityCodeListProvider` in `eventLocation` should be used instead
  - `export`- and `importVoyageNumber` added to `transportCall` - `carrierVoyageNumber` is now deprecated
  - `portCallPhaseTypeCode` added as an optional field to both `Timestamp` and to `OperationsEvent`

<a name="v100"></a>[Release v1.0.0 (16 November 2021)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_JIT/1.0.0)
---
Initial release after splitting OVS and JIT.

The changes listed below are what is new since [OVS 2.0.2](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS/2.0.2)

- `facilitySMDGCode` is deprecated - `facilityCode` together with `facilityCodeListProvider` in `eventLocation` should be used instead
- `publisher` and `publisherRole` are now mandatory fields on `OperationsEvent`
- `Party`-object updated
  - `partyCode` is now a mandatory
  - `DCSAResponsibleAgencyCode` added as a mandatory field
  - `codeListResponsibleAgencyCode` is deprecated
  - `codeListName` and  added as an optional field
