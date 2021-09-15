### Operational Vessecl Schedules (OVS)

The DCSA Interface Standard for Operational Vessel Schedules is documented on the [**DCSA OVS SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS).
Please check out the official webpage for publications related to this specification:
[JIT Port Call Data Definitions](https://dcsa.org/standards/jit-port-call-data-definitions)

### [Release v2.1.0 (...)](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS/2.1.0)
This release is to make OVS JIT v1.1 compatible

- Bump [Event_Domain to version 1.1.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#release-v111-)
  - this includes new timestamps for JIT v1.1
- Bump [OVS_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/ovs#release-v103-)

### [Release v2.0.2 (1 September 2021)](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS/2.0.2)

- Bump [DCSA_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#release-v102-25-august-2021)
- Bump [OVS_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/ovs#release-v102-31-august-2021)
- Bump [Event_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#release-v110-1-september-2021)
- description added for /v2/timestamps endPoint
- updated the response for the /v2/events endPoint. It now returns a correctly defined `TransportEvent` (previously the `TransportEvent` also contained `documentReferences` and `references` which are only to be included in T&T)
- updated example to only include a list with a single (OVS defined) `TransportEvent`
- Party object has been updated
- Removed unused query parameter definitions
- Removed deprecated values in the `TransportEvent`

### [v2.0.1](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS/2.0.1)

- `eventType` example and default values fixed (caused download errors in v2.0.0)

### [v2.0.0](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS/2.0.0)
The purpose of this release is to include JIT v1.0 (Just in Time) portcalls into OVS. The release also includes a lot of cleanup and reuse of common definitions

- delete all /`schedules` endPoints (schedules are now derived from the /`events` endPoint)
- delete all /`transport-calls` endPoints (these are no longer needed since `Transport`- and `Operations`-event are now defined as "deep" events and contain transportCall infomration as part of the event)
- delete all /`schedule-subscriptions` endPoints (subscriptions for OVS are handled in [OVS_EVENT_HUB](https://app.swaggerhub.com/apis/dcsaorg/OVS_EVENT_HUB))
- delete all /`transport-call-subscriptions` endPoints (subscriptions for OVS are handled in [OVS_EVENT_HUB](https://app.swaggerhub.com/apis/dcsaorg/OVS_EVENT_HUB))
- Domains have been introduced. Referring to objects defined in Domains  instead of defining them locally. The following domains are referenced:
  - [DCSA_Domain v1.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/dcsa/dcsa_domain_v1.0.1.yaml)
  - [OVS_Domain v1.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/ovs/ovs_domain_v1.0.0.yaml)
  - [Event_Domain v1.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/event/event_domain_v1.0.1.yaml)
  - [Error_Domain v1.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/error/error_domain_v1.0.0.yaml)
- `GET` /v2/events endPoint added to be used for polling events (can be used to poll `Transport`- and `Operations`-events)
- `POST` /v2/timestamp endPoint added for JIT
