### Booking (BKG) API

The DCSA Interface Standard for Booking is documented on the [**DCSA BKG SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_BKG).

Publications related to this specification can be found on the DCSA website:
- [Booking 1.0 Beta](https://knowledge.dcsa.org/s/publication?publicationId=a0r7T000000L8mmQAC)
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary)

<a name="v100"></a>[Release v1.0.0 (23 December 2022)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/1.0.0)
---
Release of the DCSA OpenAPI definitions for Booking 1.0.0. This release fixes minor issues found in Beta 2. This release does **not** include `Active Reefer Settings`

- Bump [Documentation_Domain to version 2.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v210) (was previously v2.0.1)
- Bump [DCSA_Domain to version 2.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v203) (was previously v2.0.1)
- Bump [Event_Domain to version 3.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v300) (was previously v2.0.1)
- Bump [Error_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/error#v200) (was previously v1.1.0)
- API description updated
- `cursor` parameter has been removed from all endPoints
- on the `\v1\events` endPoint the following query parameters have changed
  - `carrierBookingReference` query parameter removed
  - `carrierBookingRequestReference` query parameter removed
  - `documentReference` added as new query parameter
  - `equipmentReference` added as new query parameter
  - `eventDateTime` added as new query parameter
- Referenced domains above should be consulted to see exact updates - some if the major items include
  - linkage between `Commodity` and `RequestedEquipment`
  - better support for paper-version of B/L (displayedAddress, displaedName...)
  - `references` and `seals` objects updated
  - minor updates to the `Party` object (`PartyName` is now mandatory, new `parrtyFunctionCodes`)
  - confirmed and requested Equipment groups updated
  - `ActiveReeferSettings` removed

<a name="v100B2"></a>[Release v1.0.0 Beta 2 (1 July 2022)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/1.0.0-Beta-2)
---
Beta 2 release of the DCSA OpenAPI definitions for Booking 1.0.0. This release fixes missing elements from Beta 1

- Bump [Documentation_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v201) (was previously v2.0.0)
- Bump [DCSA_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v201) (was previously v2.0.0)
- Bump [Event_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v201) (was previously v2.0.0)
- API description updated
- Referenced domains above should be consulted to see exact updates - some if the items include
  - `carrierExportVoyageNumber` replaced `exportVoyageNumber`
  - `universalExportVoyageReference` added
  - rearranged internal objects in order to be reused as part of EBL process
  - `declaredValue` and `declaredValueCurrency` added
  - all locations modified to use location-interfaces
  - `volumeUnits` changed from using internal `CBM` and `CFT` to use UNECE `FTQ` and `MTQ`
  - extra `referenceTypes` added: `RUC`, `DUE`, `CER` and `AES`
  - `DID` and `LEI` added as `identifyingCodes` in the `Party` object
  - TransportPlan updated with `carrierImportVoyageNumber`, `carrierExportVoyageNumber`, `universalImportVoyageNumber` and `universalExportVoyageNumber`

<a name="v100B1"></a>[Release v1.0.0 Beta 1 (06 April 2022)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/1.0.0-Beta-1)
---
Initial release of the DCSA OpenAPI definitions for Booking. This version of Booking is connected to [Information Model 2022.1](https://dcsa.my.salesforce.com/sfc/p/#2o000000YvHJ/a/7T000000bnvo/id.kB9TVoeYABFV8NwRBQvgVkWXXK7DAuIelpCDw13M)

- Initial Documentation Domain set to [Documentation_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v200)
- Initial DCSA Domain set to [DCSA_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v200)
- Initial Event Domain set to [Event_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v200)
- Referenced domains above should be consulted to see what this API contains
