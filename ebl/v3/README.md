### Electronic Bill of Lading (EBL) API

The DCSA Bill of Lading API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL).

Publications related to the Bill of Lading API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website
- [Bill of Lading](https://dcsa.org/standards/ebill-of-lading/) maintained on the [dcsa.org](https://dcsa.org) website (contains documents and publications)
- [Bill of Lading Notification](./notification/) maintained here on GitHub
- [Bill of Lading Issuance](./issuance/) maintained here on GitHub
- [Bill of Lading Issuance Response](./issuance_response/) maintained here on GitHub
- [Bill of Lading Surrender](./surrender/) maintained here on GitHub
- [Bill of Lading Surrender Response](./surrender_response/) maintained here on GitHub

<a name="v300B2"></a>[Release v3.0.0 Beta 2 (12 April 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL/3.0.0-Beta-2)
---
Beta 2 release of the DCSA OpenAPI definitions for EBL 3.0.0.
## Business changes:
This is a list of high-level business changes:
- `DocumentParties` structure has been changed so it no longer is a "one-size fits all" solution.
- `[Origin|Destination]ChargesPaymentTerms` have been updated to allow a differentiation between `port`, `haulage` and `other` payment codes (`PRE` or `COL`).
- longer `vesselName` and `vesselIMONumber` allowed
- `codeListProvider` list cleaned up and all SP (Solution Providers) have been added
- `UNLocationCode` added as a property on Party-addresses
- calculated fields have been removed from `UtilizedTransportEquipment` and `ConsignmentItems`
- `ShippingMarks` have been moved from `ConsignmentItem` --> `CargoItem`
- `Transports` object now allows for an array of `VesselVoyages`
- `Seal` no longer supports `type` nor can the `source` be: `PHY` (Phytosanitary)
- support for multiple `Vessel`/`Vouyage` on `TransportDocument` (e.g. the first sea going vessel and the mother vessel)
## Technical changes:
This is a list of high-level technical changes:
- The API is now developed using ShopLight instead of SwaggerHub-editor. This means that we are no longer using Domains but now have everything defined inline.
- As a new principle:
  - no $ref pointing outside the yaml file
  - all `simpleTypes` are now specified "inline" in objects
  - all `objects` are now PascalCased and have a `title` property set with a presentable version of the object name in Title Case (all representations of snake_case or Pascal_Snake_Case have been removed)
- all strings having a pattern that matches `^\S+(\s+\S+)*$` have been changed to `\S(?:.*\S)?$` in order to prevent [Catastrophic Backtracking](https://www.regular-expressions.info/catastrophic.html)
- `additionalProperties= false` have been added to the `UNLocationLocation` in order to prevent schema errors when `UNLocation` is used together with a `FacilityLocation` in a `oneOf` construction (prevents schema error: _should be valid to one and only one schema, but 2 are valid_)
## List of detailed changes
- API description has been updated with new link to Information Model and Interface documents. Link to the Stats API has been updated
- all endPoint examples have been updated to reflect changes
- `CreateShippingInstructions` object has the following changes:
  - `title` changed from `Shipping Instructions` --> `Create Shipping Instructions`
  - `originChargesPaymentTermCode` and `destinationChargesPaymentTermCode` has changed from being a string to being a structure with the following properties: `haulageChargesPaymentTermCode`, `portChargesPaymentTermCode` and `otherChargesPaymentTermCode` which can all be either Prepaid (`PRE`) or Collect ( `COL`). Both properties have also been renamed to `originChargesPaymentTerm` and `destinationChargesPaymentTerm` (so the name no longer ends with `Code`)
  - `sendToPlatform` now supports 2 extra SP (Solution Providers): `IDT` (ICE Digital Trade) and `ETEU` (eTEU)
  - `placeOfBLIssue` structure changed to a more simple structure. It is now a `oneOf` between a `UNLocationCode` and a `countryCode`
  - `invoicePayableAt` structure changed - it is no longer a `oneOf` between a `UNLocationLocation` and an `AddressLocation`. `invoicePayableAt` is now an object consisting of a single property: `UNLocationCode` which is required
  - `partyContactDetails` now has a `minItems` of 1
  - `documentParties` structure changed - it is no longer a list of `DocumentParties` but an object containing a required `Shipper` and optional `Consignee`, `Endorsee` and `other` documentParties. `Shipper` is a required field
  - `consignmentItems` and `utilizedTransportEquipments` wrongly had `minLength=1`, this is now changed to `minItems=1`
  - `invoicePayableAt` is no longer a required field
- `UpdateShippingInstructions` object has the same changes as `CreateShippingInstructions` except:
  - `title` changed from `Shipping Instructions` --> `Update Shipping Instructions`
- `ShippingInstructions` (used for the GET request) object has the same changes as `CreateShippingInstructions` except:
  - `title` statys as `Shipping Instructions`
- `ShippingInstructionsRefCancelStatus` title changed to `Shipping Instructions Cancel Response`
- `RequestedChange` object has split the `field` property into 2 properties: `property` and `jsonPath` in order to align with the `DetailedError` object
- fixed some typos in the `ErrorResponse` properties descriptions
- in the `Address` object the `country` property has been changed to `countryCode`
- `CityLocation` object has extra `title` property and the `country` property has been changed to `countryCode`
- `FacilityLocation` object has extra `title` property
- `UNLocationCode` in the `FacilityLocation` has been fixed (all properties were missing)
- `UNLocationLocation` interface has `additionalProperties= false` in order to prevent schema violations when included in a `oneOf` construction together with a `FacilityLocation` in properties defining a location
- `DocumentParty` has been renamed to `OtherDocumentParty` and
  - `isToBeNotified` has been removed
  - `partyFunction` has been reduced to only contain:
    - `SCO` (Service Contract Owner) 
    - `DDR` (Consignor's freight forwarder)
    - `DDS` (Consignee's freight forwarder)
    - `COW` (Invoice payer on behalf of the consignor (shipper))
    - `COX` (Invoice payer on behalf of the consignee)
    - `N1` (First Notify Party)
    - `N2` (Second Notify Party)
    - `NI` (Other Notify Party)
- new `PartyAddress` object created where
  - `street`, `streetNumber`, `city` and `countryCode` are required fields
  - `UNLocationCode` is added
  - `country` is now a `countryCode`
- added 3 new "Document Party" objects: `Shipper`, `Consignee` and `Endorsee` to be used in the new `documentParies` structure
- updated `Party` object with:
  - use `PartyAddress` object instead of the `Address` object
  - removed `minItems` of 1 on `partyContactDetails`
- created a new `IssuingParty` object which is similar to `Party` object except the `address` is a required field
- `IdentifyingCode` structure has the following changes:
  - `codeListProvider` has changed `maxLength` from 5 --> 100
  - `codeListProvider` has a new list of allowed values: `WAVE` (Wave), `CARX` (CargoX), `ESSD` (EssDOCS), `IDT` (ICE Digital Trade), `BOLE` (Bolero), `EDOX` (EdoxOnline), `IQAX` (IQAX), `SECR` (Secro), `TRGO` (TradeGO), `ETEU` (eTEU), `GSBN` (Global Shipping Business Network), `WISE` (WiseTech), `GLEIF` (Global Legal Entity Identifier Foundation), `W3C` (World Wide Web Consortium), `DNB` (Dun and Bradstreet), `FMC` (Federal Maritime Commission), `DCSA` (Digitial Container Shipping Association) and `ZZZ` (Mutually defined)
  - `codeListProvider` example updated
  - `codeListName` description changed
- `ConsignmentItem` has the follow changes:
  - all calculated fields have been removed - this means: `weight`, `weightUnit`, `volume` and `volumeUnit` have been removed
  - `descriptionOfGoods` example updated to not include "number Of Packages value"
  - `HSCodes` wrongly had `minLength=1`, this is now changed to `minItems=1`
  - added `ShippingMarks` which has been moved from `CargoItems`
- `ConsignmentItem_CAR` has been renamed to `ConsignmentItemCarrier`
- `ConsignmentItem_SHI` has been renamed to `ConsignmentItemShipper`
- fixed typo in `CustomsReferences` `title` property
- `CargoItem_CAR` has been renamed to `CargoItemCarrier`
- `CargoItem_SHI` has been renamed to `CargoItemShipper`
- `outerPackaging` is no longer a required field on `CargoItemShipper` object
- `OuterPackaging_SHI` renamed to `OuterPackagingShipper`
- `packageCode` `minLength` and `maxLength` set to 2 in order to allow exactly 2 characters
- `description` is now a required field on `OuterPackagingShipper`
- `OuterPackaging_CAR` renamed to `OuterPackagingCarrier`
- `imoPackagingCode` `minLength` and `maxLength` set to 1 and 5 in order to allow exactly 1-5 characters
- `description` is now a required field on `OuterPackagingCarrier`
- `DangerousGoods_CAR` and `DangerousGoods` consolidated into one object: `DangerousGoods`
- `unNumber`, `naNumber` and `codedVariantList` `minLength` and `maxLength` set to 4 in order to allow exactly 4 characters
- `subsidiaryRisk[1|2]` `minLength` and `maxLength` set to 1 and 3 in order to allow strings of length 1-3
- typo in `inhalationZone` description fixed
- `volume` property of DG now has both properties (`value` and `unit`) as required properties
- `UtilizedTransportEquipment_CAR` renamed to `UtilizedTransportEquipmentCarrier`
- `UtilizedTransportEquipmentCarrier` has the follow changes:
  - all calculated fields have been removed - this means: `cargoGrossWeight`, `cargoGrossWeightUnit`, `cargoGrossVolume` and `cargoGrossVolumeUnit` have been removed
  - `seals` wrongly had `minLength=1`, this is now changed to `minItems=1`
- `UtilizedTransportEquipment_SHI` renamed to `UtilizedTransportEquipmentShipper`
- `seals` on `UtilizedTransportEquipmentShipper` wrongly had `minLength=1`, this is now changed to `minItems=1`
- `title` property on `RequiredEquipment` added
- `type` property removed from the `Seal` object
- `PHY` (Phytosanitary) removed as a `sealSource`
- `AdvanceManifestFiling_BKG` and `AdvanceManifestFiling_EBL` consolidated into one object called `AdvanceManifestFiling` and example modified
<a name="TransportDocumentv300B2"></a>## Transport Document changes
- `TransportDocument` has the following changes:
  - all strings pattern matching `^\S+(\s+\S+)*$` have been changed to `\S(?:.*\S)?$` in order to prevent [Catastrophic Backtracking](https://www.regular-expressions.info/catastrophic.html)
  - `originChargesPaymentTermCode` and `destinationChargesPaymentTermCode` have been removed
  - `declaredValueCurrency` added a `minLength` of 3 (as the `declaredValueCurrency` must be exactly 3 characters long)
  - `issuingParty` now uses a `IssuingParty` object instead of a `Party` object (the `address` property is now required)
  - `placeOfBLIssue` structure changed to a more simple structure. It is now a `oneOf` between a `UNLocationCode` and a `countryCode` and not a `oneOf` between a `UNLocationLocation` interface and an `AddressLocation` interface
  - `invoicePayableAt` structure changed into a more simple structure. It is now a `oneOf` between a `UNLocationCode` and a `freeText` field and not a `oneOf` between a `UNLocationLocation` interface and an `AddressLocation` interface. The `freeText` is **only** to be used when the `invoicePayableAt` cannot be expressed as a `UNLocationCode`
  - `minItems` of 1 on `partyContactDetails` as it is a required field
  - `documentParties` structure changed - it is no longer a list of `DocumentParties` but an object containing a required `Shipper` and optional `Consignee`, `Endorsee` and `other` documentParties. `Shipper` is a required field
  - `consignmentItems` and `utilizedTransportEquipments` wrongly had `minLength=1`, this is now changed to `minItems=1`
  - `freightPaymentTermCode` is no longer a required property
- `Transports` object changed:
  - new object `vesselVoyage` has been added. The object is a list of "Vessel" and "Voyage" information allowing for multiple Vessels to be mentioned on the `TransportDocument`
  - `vesselName` has changed `maxLength` from 35 --> 50
  - `universalExportVoyageReference` `minLength` and `maxLength` set to 5 in order to allow exactly 5 characters
- `title` property on `PlaceOfReceipt`, `PortOfLoading`, `PortOfDischarge`, `PlaceOfDelivery` and `OnwardInlandRouting` added
  - `currencyCode` `minLength` set to 3 in order to allow exactly 3 characters

<a name="v300B1"></a>[Release v3.0.0 Beta 1 (28 December 2023)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL/3.0.0-Beta-1)
---
Beta 1 release of the DCSA OpenAPI definitions for Bill of Lading 3.0.0. This release adds `Active Reefer Settings` (Phase 1) and `Dangerous Goods`. It removes the Events endPoint and now supports the Notification pattern.

- Bump [Documentation_Domain to version 3.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v300) (was previously v2.1.0)
- Bump [Error_Domain to version 3.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/error#v300) (was previously v2.0.0)
- Bump [DCSA_Domain to version 3.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v310) (was previously v2.0.3)
- Event_Domain no longer needed
- Check above Domains to see changes of objects since last version
- `summary`-endPoints removed
- amendment flow changed.
  - amendments to `ActiveReeferSettings` and `Dangerous Goods` must be done via a `Booking Amendment`.
  - amendments to a `Shipping Instructions` must be done via an `Shipping Instructions update` and can be monitored via the `updatedShippingInstructionsStatus` status property
- `events` endPoint removed and a notification API added to support Push Notifications
- multiple examples added to most endPoints
- descriptions improved to all endPoints explaining flows
