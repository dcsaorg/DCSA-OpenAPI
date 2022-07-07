## DCSA OVS API

The DCSA OVS API is documented on [**OVS SwaggerHub**](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_OVS).

The primary purpose of this API is to specify endPoints for schedules shared between Vessel Partners. This API primarily defines endPoints and otherwise uses the following Domains:
- Event Domain
- Location Domain
- DCSA Domain
- Error Domain

<a name="v300B1"></a>[Release v3.0.0 Beta 1 (30 June 2022)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_OVS/3.0.0-Beta-1)
---
This version focuses on making a schedule endPoint and detaching [JIT 1.0 and JIT 1.1 (Just in Time)](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/jit/v1) into a separate API

- Description updated
- `/events` endPoint removed
- Bump [Event_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v201) (was previously v1.1.1)
- Bump [DCSA_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v201) (was previously v1.0.3)
- Bump [Error_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/error#v110) (was previously v1.0.0)
- please follow domain links above to get full list of changes:
- Total rewrite of OVS
  - `/v3/service-schedules` endPoint added. Can be used for `GET`ing (polling) schedules
  - `/v3/events` endPoint removed
  - `/v3/timestamp` endPoint removed as JIT and OVS separated into 2 APIs
