### Booking (BKG) API

The DCSA Booking API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_BKG).

Publications related to the Booking API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website
- [Booking Process](https://dcsa.org/standards/booking-process/) contains documents and publications
- **Deprecated** [Booking Notification](./notification/) maintained here on GitHub (is now included as part of the Booking API)

<a name="v200"></a>[Release v2.0.0 (...)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/2.0.0)
---
This is a moving target and will be updated as soon as the version is published

<a name="v200B20240726"></a>[Release v2.0.0 Beta 20240726 (26 July 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/2.0.0-Beta-20240726)
---
Snapshot as of 26 of July 2024 for Booking 2.0.0 Beta
## Major changes
- ...

## Minor changes
- ...

<a name="v200B20240614"></a>[Release v2.0.0 Beta 20240614 (28 June 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/2.0.0-Beta-20240614)
---
Snapshot as of 14 of June 2024 for Booking 2.0.0 Beta
## Major changes
- `pattern: ^\S(?:.*\S)?$` has been added to the `locationName` of the `AddressLocation` interface
- `street`, `streetNumber`, `city` and `countryCode` are now required properties on the `AddressLocation` interface
- `street`, `streetNumber`, `city` and `countryCode` are now required properties on the `PartyAddress` object
- `TRAC` (TRACE Original) and `BRIT` (BRITC eBL) added as values for `codeListProvider` in `IdentifyingCode` object
- `eventDateTime` removed from the `ShipmentLocation` object
- in `DangerousGoods` the following has changed:
  - `netWeight` property must now be >= 0
  - `netExplosiveContent` property must now be >= 0
  - `netExplosiveContent` unit now also allow: `LBR` (Pounds) and `ONZ` (Ounce)
  - `volume` property object must now be >= 0
- typo fixed in `carrierServiceCode` --> `carrierSerivceCode` in the `Transport` object

## Object changes
- `RequestedEquipmentCarrier` renamed to `RequestedEquipment` and modified to include everything that was in the `RequestedEquipmentCarrier` (no use of `allOf` any more)
- `RequestedEquipmentShipper` modified so it no longer needs a `allOf`
- `CommodityCarrier` modified so it no longer needs a `allOf`

## Minor changes
- Many description changes
- Title properties were added on all objects
- Some examples have been updated/added

<a name="v200B3"></a>[Release v2.0.0 Beta 3 (...)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/2.0.0-Beta-3)
---
Going forward Beta 3 will not be updated any more. The new way of working will be that we update the final v2.0.0 continuously. Every once in a while we release "Snapshots". An example of this is the [Snapshot of 14 June 2024](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/bkg/v2#v200B20240614) just above.

<a name="v200B2"></a>[Release v2.0.0 Beta 2 (12 April 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/2.0.0-Beta-2)
---
Beta 2 release of the DCSA OpenAPI definitions for Booking 2.0.0.
## Business changes:
This is a list of high-level business changes:
- `DocumentParties` structure has been changed so it no longer is a "one-size fits all" solution.
- `[Origin|Destination]ChargesPaymentTerms` have been updated to allow a differentiation between `port`, `haulage` and `other` payment codes (`PRE` or `COL`).
- longer `vesselName` and `vesselIMONumber` allowed
- `codeListProvider` list cleaned up and all SP (Solution Providers) have been added
- `UNLocationCode` added as a property on Party-addresses
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
- `RequestedChange` object has split the `field` property into 2 properties: `property` and `jsonPath` in order to align with the `DetailedError` object
- fixed some typos in the `ErrorResponse` descriptions
- `Address` object
  - no longer has a `name` property
  - `country` property has been changed to `countryCode`
  - `floot` example changed to `2nd`
  - no required properties in the object
- `UNLocationLocation` interface has `additionalProperties= false` in order to prevent schema violations when included in a `oneOf` construction together with a `FacilityLocation` in properties defining a location
- `CreateBooking` object has the following changes:
  - `title` changed from `Booking` --> `Create Booking`
  - `documentParties` is now a required property
  - `originChargesPaymentTermCode` and `destinationChargesPaymentTermCode` has changed from being a string to being a structure with the following properties: `haulageChargesPaymentTermCode`, `portChargesPaymentTermCode` and `otherChargesPaymentTermCode` which can all be either Prepaid (`PRE`) or Collect ( `COL`). Both properties have also been renamed to `originChargesPaymentTerm` and `destinationChargesPaymentTerm` (so the name no longer ends with `Code`)
  - `vessel` object has been updated so
    - `name` (vesselName) has maxLength changed from `35` --> `50`
    - `vesselIMONumber` has maxLength changed from `7` --> `8`, `minLength=7` has been added and the pattern has been changed to `^\\d{7,8}$`
  - `universalServiceReference` added a `minLength` of 8 (as the `universalServiceReference` must be exactly 8 characters long)
  - `universalExportVoyageReference` added a `minLength` and `maxLength` to both 5 characters (as `minLength` must be exactly 5 characters long)
  - `declaredValueCurrency` added a `minLength` of 3 (as the `declaredValueCurrency` must be exactly 3 characters long)
  - `exportDeclarationReference` and `importLicenseReference` descriptions no longer require any conditions
  - `invoicePayableAt` structure changed - it is no longer a `oneOf` between a `UNLocationLocation` and an `AddressLocation`. `invoicePayableAt` is now an object consisting of a single property: `UNLocationCode` which is required
  - `placeOfBLIssue` structure changed to a more simple structure. It is now a `oneOf` between a `UNLocationCode` and a `countryCode`
  - `documentParties` structure changed - it is no longer a list of `DocumentParties` but an object containing a required `bookingAgent` and optional `shipper`, `consignee`, `serviceContractOwner`, `carrierBookingOffice` and `other` documentParties
  - added a `minItems` of 1 on `ShipmentLocations` as it is a required property
  - added a `minItems` of 1 on `RequestedEquipments` as it is a required property
- `UpdateBooking` object has the same changes as `CreateBooking` except:
  - `title` changed from `Booking` --> `Update Booking`
- `Booking` (used for the GET request) object has the same changes as `CreateBooking` except:
  - `title` statys as `Booking`
  - `confirmedEquipments` description updated
  - `transportPlan` description updated
  - `shipmentCutOffTimes` description updated
- `ActiveReeferSettings_BKG` and `ActiveReeferSettings` consolidated into a single object called `ActiveReeferSettings`
- new `PartyAddress` object created where
  - all properties are optional
  - `UNLocationCode` is added
  - `country` is now a `countryCode`
- `DocumentParty` has been renamed to `OtherDocumentParty` and
  - `isToBeNotified` has been removed
  - `partyFunction` has been reduced to only contain:
    - DDR (Consignor's freight forwarder)
    - DDS (Consignee's freight forwarder)
    - COW (Invoice payer on behalf of the consignor (shipper))
    - COX (Invoice payer on behalf of the consignee)
    - N1 (First Notify Party)
    - N2 (Second Notify Party)
    - NI (Other Notify Party)
- added 5 new "Document Party" objects: `BookingAgent`, `Shipper`, `Consignee`, `ServiceContractOwner` and `CarrierBookingOffice` to be used in the new `documentParies` structure
- `Party` now uses the `PartyAddress` object (instad of the `Address` object)
- `IdentifyingCode` structure has the following changes:
  - `codeListProvider` has changed `maxLength` from 5 --> 100
  - `codeListProvider` has a new list of allowed values: `WAVE` (Wave), `CARX` (CargoX), `ESSD` (EssDOCS), `IDT` (ICE Digital Trade), `BOLE` (Bolero), `EDOX` (EdoxOnline), `IQAX` (IQAX), `SECR` (Secro), `TRGO` (TradeGO), `ETEU` (eTEU), `GSBN` (Global Shipping Business Network), `WISE` (WiseTech), `GLEIF` (Global Legal Entity Identifier Foundation), `W3C` (World Wide Web Consortium), `DNB` (Dun and Bradstreet), `FMC` (Federal Maritime Commission), `DCSA` (Digital Container Shipping Association) and `ZZZ` (Mutually defined)
  - `codeListProvider` example updated
  - `codeListName` description changed
- `RequestedEquipment_CAR` renamed to `RequestedEquipmentCarrier`
- `RequestedEquipment_SHI` renamed to `RequestedEquipmentShipper`
- Fixed conditional requirement on `cargoGrossVolumeUnit` description
- `Commodity_CONF` renamed to `CommodityCarrier`
- `packageCode` `minLength` and `maxLength` set to 2 in order to allow exactly 2 characters
- `imoPackagingCode` `minLength` and `maxLength` set to 1 and 5 in order to allow strings of length 1-5
- `dangerousGoods` `minLength` property removed as it was wrongly specified
- `DangerousGoods_BGK` and `DangerousGoods` have been merged into `DangerousGoods`
- `codedVariantList` `minLength` and `maxLength` set to 4 in order to allow exactly 4 characters
- `subsidiaryRisk[1|2]` `minLength` and `maxLength` set to 1 and 3 in order to allow strings of length 1-3
- `volume` property of DG now has both properties (`value` and `unit`) as required properties
- `unNumber` and `naNumber` `minLength` and `maxLength` set to 4 in order to allow exactly 4 characters
- `vesselName` changed `maxLength` from 35 --> 50
- `vesselIMONumber` changed `maxLength` from 7 --> 8 and added a `minLength` of 7
- `universalServiceReference` `minLength` set to 8 in order to allow exactly 8 characters
- `universalImportVoyageReference` and `universalExportVoyageReference` `minLength` and `maxLength` set to 5 in order to allow exactly 5 characters
- `LoadLocation` and `DischargeLocation` have `title` property with a Title Case version of the object name
- `AdvanceManifestFiling_BKG` renamed to `AdvanceManifestFiling`
- `currencyCode` `minLength` set to 3 in order to allow exactly 3 characters
- Fixed wrong required `bookingStatus` on the root level on the Patch endPoint

<a name="v200B1"></a>[Release v2.0.0 Beta 1 (28 December 2023)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/2.0.0-Beta-1)
---
Beta 1 release of the DCSA OpenAPI definitions for Booking 2.0.0. This release adds `Active Reefer Settings` and `Dangerous Goods`. It improves the amendment flow. It removes the Events endPoint and now supports the Notification pattern.

- Bump [Documentation_Domain to version 3.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v300) (was previously v2.1.0)
- Bump [Error_Domain to version 3.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/error#v300) (was previously v2.0.0)
- Event_Domain no longer used
- Check above Domains to see changes of objects since last version
- `summary`-endPoints removed
- `Booking Request` and `Shipment` endPoint consolidated into one GET endPoint
- amendment flow improved. It is now possible to follow the status of an amendment via the `amendedBookingStatus`
- `events` endPoint removed and a notification API added to support Push Notifications
- multiple examples added to most endPoints
- descriptions improved to all endPoints explaining flows
