### Electronic Bill of Lading (EBL) API

The DCSA Bill of Lading API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL).

Publications related to the Bill of Lading API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website
- [Bill of Lading](https://dcsa.org/standards/ebill-of-lading/) maintained on the [dcsa.org](https://dcsa.org) website (contains documents and publications)
- [Bill of Lading Issuance](./issuance/) maintained here on GitHub
- [Bill of Lading Issuance Response](./issuance_response/) maintained here on GitHub
- [Bill of Lading Surrender](./surrender/) maintained here on GitHub
- [Bill of Lading Surrender Response](./surrender_response/) maintained here on GitHub

<a name="v200"></a>[Release v2.0.0 (23 December 2022)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL/2.0.0)
---
Release of the DCSA OpenAPI definitions for Bill of Lading 2.0.0. This release fixes minor issues found in Beta 2

- Bump [Documentation_Domain to version 2.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v210) (was previously v2.0.1)
- Bump [DCSA_Domain to version 2.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v203) (was previously v2.0.1)
- Bump [Event_Domain to version 3.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v300) (was previously v2.0.1)
- Bump [Error_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/error#v200) (was previously v1.1.1)
- API description updated
- `cursor` parameter removed from all endPoints
- following modifications has been done to the ´GET /events` endPoint
  - `carrierBookingRequestReference` removed as parameter and substituted by `documentTypeCode` and `documentReference`
  - `eventDateTime` added as parameter
- Please consult the Domains updated above to see changes - some of the major are listed here:
  - `NumberOfOriginals` and `NumberOf Copies` can now be with and without Charges
  - `DisplayedNameForPlaceOfReceipt`, `DisplayedNameForPortOfLoad`, `DisplayedNameForPortOfDischarge` and `DisplayedNameForPlaceOfDelivery` are now limited to 5 lines of 35 characters (same applies to the address of all the `DocumentParties`)
  - `references` and `seals` objects updated
  - minor updates to the `Party` object (`PartyName` is now mandatory, new `parrtyFunctionCodes`)
  - No `ActiveReeferSettings` in this release

<a name="v200B2"></a>[Release v2.0.0 Beta 2 (1 July 2022)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL/2.0.0-Beta-2)
---
Beta 2 release of the DCSA OpenAPI definitions for Bill of Lading 2.0.0. This release fixes missing elements from Beta 1

- Bump [Documentation_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v201) (was previously v2.0.0)
- Bump [DCSA_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v201) (was previously v2.0.0)
- Bump [Event_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v201) (was previously v2.0.0)
- API description updated
- Referenced domains above should be consulted to see exact updates - some if the items include
  - locations are now represented using location-interfaces
  - `consignmentItem` now has `weight` and `weightUnit` as required fields
  - `volumeUnits` changed from using internal `CBM` and `CFT` to use UNECE `FTQ` and `MTQ`
  - `packageNameOnBL` added to `cargoItem`
  - extra `referenceTypes` added: `RUC`, `DUE`, `CER` and `AES`
  - `cargoGrossVolume`, `cargoGrossVolumeUnit` and `numberOfPackages` added to `utilizedTransportEquipment`
  - `DID` and `LEI` added as `identifyingCodes` in the `Party` object
  - `issuerCode` and `issierCodeListProvider` changed to `carrierCode` and `carrierCodeListProvider`
  - `issuingParty` added to `transportDocument`
  - TransportPlan updated with `carrierImportVoyageNumber`, `carrierExportVoyageNumber`, `universalImportVoyageNumber` and `universalExportVoyageNumber`
  - `transportDocument` updated with `booking` values: `termsAndConditions`, `recieptTypeAtOrigin`, `deliveryTypeAtDestination`, `cargoMovementTypeAtOrigin`, `cargoMovementTypeAtDestination`, `serviceContractReference`, `carrierExportVoyageNumber`, `universalExportVoyageReference`, `vesselName`, `declaredValue` and `declaredValueCurrency`
  - `transports` (TransportPlan) added to the `transportDocument`
  - `shipmentLocations` added to the `transportDocument`

<a name="v200B1"></a>[Release v2.0.0 Beta 1 (06 April 2022)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL/2.0.0-Beta-1)
---
Initial release of the DCSA OpenAPI definitions for Bill of Lading. This version of EBL is connected to [Information Model 2022.1](https://dcsa.my.salesforce.com/sfc/p/#2o000000YvHJ/a/7T000000bnvo/id.kB9TVoeYABFV8NwRBQvgVkWXXK7DAuIelpCDw13M)

- Initial Documentation Domain set to [Documentation_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v200) (previous release was v1.0.0)
- Initial DCSA Domain set to [DCSA_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v200) (previous release was v1.0.0)
- Initial Event Domain set to [Event_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v200) (previous release was v1.0.0)
- Referenced domains above should be consulted to see exact updates
