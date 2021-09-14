# DCSA defined Domains
Domains are used to specify reusable components used accross APIs.
Domains are stored with the version number as part of the filename as multiple versions of the same Domain can be active in different APIs/Domains at the same time.

Once a Domain is published (on [SwaggerHub](https://app.swaggerhub.com/organizations/dcsaorg)) in a specific version - **that file never changes**. If changes are required - a new version of the Domain needs to be created.

Chapter 4.1 of the [DCSA API Guidelines](https://dcsa.org/wp-content/uploads/2020/09/20200921-DCSA-API-Design-Principles-1.0.pdf) should be followed when naming the file. SemVer is to be used as part of the fileName:

`{domain file}_vX.Y.Z`

Where `X` is the Major version, `Y` is the Minor version and `Z` is the patch version.

A changelog will be located in each folder describing differences between versions.

### DCSA
This domain is used to define single components (not objects) used in other Domains or APIs. No objects should be defined here.

Preferably a description, an example and a type is defined for all components.

Parameters and headers used in all APIs is defined here for example: limit and cursor parameter, pagination and API-Version headers

https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa

### Documentation
This domain is used for the electronic documentation APIs (ex: [Electronic Bill of Lading](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL) and [Booking](https://app.swaggerhub.com/apis/dcsaorg/DCSA_BKG)). The domain is a collection of objects consisting of components defined in the DCSA Domain.

https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation

### Error
The error object used in all APIs is defined here. This allows for a consistent definition of how an error is defined and returned.

https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/error

### Event
The Events Domain contains all definitions and components used for Events. Events are primarily used in Event Hubs ([Track & Trace](https://app.swaggerhub.com/apis/dcsaorg/DCSA_TNT) (>= v2.1.0), [Documentation Hub](https://app.swaggerhub.com/apis/dcsaorg/DOCUMENTATION_EVENT_HUB) and [Operational Vessel Schedule Hub](https://app.swaggerhub.com/apis/dcsaorg/OVS_EVENT_HUB)). Events are also used in all polling endPoints in APIs where subscriptions are involved ([Electronic Bill of Lading](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL), [Operational Vessel Schedules](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS) (>= v1.1.1) and [Booking](https://app.swaggerhub.com/apis/dcsaorg/DCSA_BKG))

https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event

### Location
This domain contains all definitions for Locations. The domain is a collection of Location related objects consisting of components defined in the DCSA Domain.

https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location

### OVS
This domain is used for the [Operational Schedule Vessel](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS) API (>= v1.1.1). The domain is a collection of objects consisting of components defined in the DCSA Domain.

https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/ovs
