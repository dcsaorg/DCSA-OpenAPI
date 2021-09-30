### Operational Vessecl Schedules (OVS)

The DCSA Interface Standard for Operational Vessel Schedules is documented on the [**DCSA OVS SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS).
Please check out the official webpage for publications related to this specification:
[JIT Port Call Data Definitions](https://dcsa.org/standards/jit-port-call-data-definitions)

<a name="v210"></a>[Release v2.1.0 (...)](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS/2.1.0)
---
This release is to make OVS JIT v1.1 compatible

- Description updated
- Bump [Event_Domain to version 1.1.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v111)
  - this includes new timestamps for JIT v1.1 (`FAST`, `GWAY`, etc)
- Bump [DCSA_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v103)
- Bump [OVS_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/ovs#v103)
  - this includes updated `Party` obejct
- `UNLocationCode` filter added to `GET /v2/events endPoint`
- `sort` queryParameter added to `GET /v2/events endPoint`
- `facilityTypeCode` no longer mandatory in `POST /v2/timestamps`
- specialized example removed from `GET /v2/events` endPoint - now Swaggerhub default is used again
- `codeListName` added to `Party`-object
- `TWG` (Towage), `LSH` (Lashing) and `BUK` (Bunker) added to `publisherRole`
- `LASH` (Lashing), `SAFE` (Safety), `FAST` (All Fast) and `GWAY` (Gangway down and secure) added to `portCallServiceTypeCode`
- `portCallServiceTypeCode` now optional in `OperationsEvents`
- globally defined `facilityTypeCodeOPR` used instead of locatlly defined version
- `PICK`, `DROP`, `INSP`, `RSEA` and `RMVD` added to `EquipmentEventTypeCode` it was forgotten in previous version
- `facilitySMDGCode` is deprecated - `facilityCode` together with `facilityCodeListProvider` in `eventLocation` should be used instead

<a name="v203"></a>[Release v2.0.3 (...)](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS/2.0.3)
---
A bugrelease to fix the `facilitySMDGCode` problem

- `facilitySMDGCode` is deprecated - `facilityCode` together with `facilityCodeListProvider` in `eventLocation` should be used instead
- `publisher` and `publisherRole` are now mandatory fields on `OperationsEvent`
- `partyCode` and `codeListResponsibleAgencyCode` are now mandatory fields in the `Party`-object
- `codeListName` added as an optional field to the `IdentifyingCodes` in the `Party`-object

<a name="v202"></a>[Release v2.0.2 (1 September 2021)](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS/2.0.2)
---

- Bump [DCSA_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v102)
- Bump [OVS_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/ovs#v102)
- Bump [Event_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v110)
- description added for /v2/timestamps endPoint
- updated the response for the /v2/events endPoint. It now returns a correctly defined `TransportEvent` (previously the `TransportEvent` also contained `documentReferences` and `references` which are only to be included in T&T)
- updated example to only include a list with a single (OVS defined) `TransportEvent`
- Party object has been updated
- Removed unused query parameter definitions
- Removed deprecated values in the `TransportEvent`

<a name="v201"></a>[Release v2.0.1](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS/2.0.1)
---

- `eventType` example and default values fixed (caused download errors in v2.0.0)

<a name="v200"></a>[Release v2.0.0](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS/2.0.0)
---
The purpose of this release is to include JIT v1.0 (Just in Time) portcalls into OVS. The release also includes a lot of cleanup and reuse of common definitions

- delete all /`schedules` endPoints (schedules are now derived from the /`events` endPoint)
- delete all /`transport-calls` endPoints (these are no longer needed since `Transport`- and `Operations`-event are now defined as "deep" events and contain transportCall infomration as part of the event)
- delete all /`schedule-subscriptions` endPoints (subscriptions for OVS are handled in [OVS_EVENT_HUB](https://app.swaggerhub.com/apis/dcsaorg/OVS_EVENT_HUB))
- delete all /`transport-call-subscriptions` endPoints (subscriptions for OVS are handled in [OVS_EVENT_HUB](https://app.swaggerhub.com/apis/dcsaorg/OVS_EVENT_HUB))
- Domains have been introduced. Referring to objects defined in Domains  instead of defining them locally. The following domains are referenced:
  - [DCSA_Domain v1.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#release-v101-02-august-2021)
  - [OVS_Domain v1.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/ovs#initial-release-v100)
  - [Event_Domain v1.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#release-v101-02-august-2021)
  - [Error_Domain v1.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/error#release-v100-30-june-2021)
- `GET` /v2/events endPoint added to be used for polling events (can be used to poll `Transport`- and `Operations`-events)
- `POST` /v2/timestamp endPoint added for JIT
