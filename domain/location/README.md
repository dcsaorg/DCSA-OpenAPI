## Location Domain

The Location Domain is documented on [**Location Domain SwaggerHub**](https://app.swaggerhub.com/domains-docs/dcsaorg/LOCATION_DOMAIN).

The primary purpose of this Domain is to specify common components related to a location.

<a name="v203"></a>[Release v2.0.3 (23 December 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/LOCATION_DOMAIN/2.0.3)
---
Bump DCSA_Domain reference

- Bump [DCSA_Domain to version 2.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v203) (was previously v2.0.2)

<a name="v202"></a>[Release v2.0.2 (5 July 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/LOCATION_DOMAIN/2.0.2)
---
Bump DCSA_Domain reference

- Bump [DCSA_Domain to version 2.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v202) (was previously v2.0.1)

<a name="v201"></a>[Release v2.0.1 (30 June 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/LOCATION_DOMAIN/2.0.1)
---
Minor description updates and DCSA_Domain bump

- Bump [DCSA_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v201) (was previously v2.0.0)
- fixed typo in Domain description
- fixed type 'interfrace' `->` interface everywhere
- `referenceLocation` interface added for future use
- `facilityLocation` and `facilitySMDGLocation` descriptions updated
- `idLocation` renamed to `referenceLocation` (this has been an unused simpleType)
- `facilityLocation` interface descrption updated
  - `UNLocationCode` description updated
- `facilitySMDGLocation` interface descrption updated
  - `UNLocationCode` set to mandatory

<a name="v200"></a>[Release v2.0.0 (5 April 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/LOCATION_DOMAIN/2.0.0)
---
Location `Interfaces` have been introduced in this version.

- Bump [DCSA_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v200) (was previously v1.0.3)
- Modified description of general purpose `location` object
- Created interfaces for the location object
  - `idLocation` ability to identify a location by a unique ID
  - `addressLocation` express a location only using an `address` object
  - `facilityLocation` express a location only using a `facilityCode` and a `facilityCodeListProvider` (an optional `UN Location Code` can be provided)
  - `facilitySMDGLocation` express a location only using a `facilityCode` using the `SMDG` code (an optional `UN Location Code` can be provided)
  - `geoLocation` express a location using `latitude` and `longitude`
  - `unLocationLocation` express a location using a `UN Location Code`

<a name="v103"></a>[Release v1.0.3 (28 October 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/LOCATION_DOMAIN/1.0.3)
---
- Bump [DCSA_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v103)
- `facilityCode` and `facilityCodeListProvider` have been added to the `location` object

<a name="v102"></a>[Release v1.0.2 (25 August 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/LOCATION_DOMAIN/1.0.2)
---
- Bump [DCSA_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v102)

<a name="v101"></a>[Release v1.0.1 (02 August 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/LOCATION_DOMAIN/1.0.1)
---
- Bump [DCSA_Domain to version 1.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v101)

<a name="v100"></a>[Release v1.0.0 (30 June 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/LOCATION_DOMAIN/1.0.0)
---
- Domain created and released
