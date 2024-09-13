### Booking (BKG) API

The DCSA Booking API is specified on [**SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_BKG).

Publications related to the Booking API:
- [Glossary of Terms](https://knowledge.dcsa.org/s/glossary) maintained on the [dcsa.org](https://dcsa.org) website
- [Booking Process](https://dcsa.org/standards/booking-process/) contains documents and publications
- [Booking Notification](./notification/) maintained here on GitHub  (**DEPRECATED** - now included as part of Booking API)

<a name="v200"></a>[Release v2.0.0 (...)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/2.0.0)
---
This is a moving target and will be updated as soon as the version is published

<a name="v200B20240913"></a>[Release v2.0.0 Beta 20240913 (13 September 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/2.0.0-Beta-20240913)
---
Snapshot as of 13 of September 2024 for Booking 2.0.0 Beta
## Key changes
- `POST`, `PUT` and `PATCH` endPoints only return `202` (Accepted) as a success response code
- changed all PseudoEnum values so they no longer include spaces (` `)
- links to specific standardisation bodies versions replaced with more "general" links (Wikipedia links replaced with links to www.iso.org)
- structure of `weight` and `volume` (`value` and `unit`) specifications changed to object containing two properties: `value` and `unit` instead of conditional properties
- `volume` renamed to `netVolume` in DG (Dangerous Goods)

## All changes
- fixed a lot of typos in descriptions
- Added a link to **API Design & Implementation Principles**
- API endPoint descriptions updated
- anything but `200` (OK) and `201` (Created) removed as response codes for `POSt`, `PUT` and `PATCH`
- modified endPoint examples
- title property added to all objects
- `bookingStatus`, `amendedBookingStatus` and `bookingCancellationStatus` values updated - all spaces (` `) have been replaced with underscore (`_`)
- `originChargesPaymentTerm`, `destinationChargesPaymentTerm` and `vessel` created as globally defined objects and referenced where needed
- `declaredValueCurrency` description link updated
- `carrierCode` description updated to make it more clear that it is a `SCAC` code
- `incoTerms` description updated to not include list of values as this is defined by https://iccwbo.org/business-solutions/incoterms-rules/
- changed `errorDateTime` example to UTC instead of timeZone specific
- `facilityCode` description link updated to a more general page instead of a specific version
- `BookingRefStatus` object removed as it is no longer needed in reponse payloads
- `TaxLegalReference` object updated:
  - description updated to no longer link to reference data (it is currently out of scopre for DCSA to maintain this list)
  - `countryCode` example updated to align with `type` example
- `CustomsReference` object updated:
  - description updated to no longer link to reference data (it is currently out of scopre for DCSA to maintain this list)
  - `countryCode` example updated to align with `type` example
- `ISOEquipmentCode` description link updated to www.iso.org instead of Wikipedia
- `emptyContainerPickup` `dateTime` example updated to be UTC time
- `equipmentReferences` description link updated to www.iso.org instead of Wikipedia
- structure of `RequestedEquipment` and `RequestedEquipmentShipper` objects changed so it no longer uses `oneOf` to choose between SOC (Shipper Owned Container) and COC (Carrier Owned Container). Instead a conditional `tareWeight` peroperty has been added along with `isShipperOwned`
- `ContainerPositioning` and `ContainerPositioningEstimated` `dateTime` example updated to be UTC time
- `ContainerPositioningLocation` and `EmptyContainerDepotReleaseLocation` description updated to include a condition
- `HSCodes` description link updated to a general link instead of a specific version
- `cargoGrossWeight` and `cargoGrossWeightUnit` merged into a property called `cargoGrossWeight` containing two mandatory properties `value` and `unit`
- `cargoGrossVolume` and `cargoGrossVolumeUnit` merged into a property called `cargoGrossVolume` containing two mandatory properties `value` and `unit`
- `SCHEDULE B` updated to `SCHEDULE_B` as a value in the `type` in `NationalCommodityCode` to avoid the space (` `)
- `packageCode` description link updated to a general link instead of a specific version
- `imoPackagingCode` description updated
- `imoClass` reference data link removed
- `fumigationDateTime` example updated to use UTC time
- `volume` renamed to `netVolume` in DG (Dangerous Goods)
- `LoadLocation` and `DischargeLocation`description updated to make it clear that if multiple ways of specifying a location is used they must point to the same place
- `cutOffDateTime` example updated to use UTC
- `AdvanceManifestFiling` object updated:
  - description updated to no longer link to reference data (it is currently out of scopre for DCSA to maintain this list)
  - `countryCode` example updated to align with `manifestTypeCode` example
- `currencyCode` description link updated
- `OriginChargesPaymentTerm`, `DestinationChargesPaymentTerm` and `Vessel` objects created

<a name="v200B20240830"></a>[Release v2.0.0 Beta 20240830 (30 August 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/2.0.0-Beta-20240830)
---
Snapshot as of 30 of August 2024 for Booking 2.0.0 Beta
## Key changes
- Semantics for `202` responseCode changed
- async Cancellation added
- renaming and reordering of `"Empty" Container Positionings` in `RequestedEquipment` and `ConfirmedEquipment`
- `partyName`, `street`, `ContactDetailName` and `city` maxLength modified to be compatible with EDI
- `Feedback` object inserted as a communication from `Carrier` --> `Shipper`  (no more `reason` property)

## All changes
- API endPoint descriptions updated
- API endPoint examples updated (`name` removed from `address` objects, `isCompetentAuthorityApprovalProvided` renamed to `isCompetentAuthorityApprovalRequested`)
- `409` (Conflict) responseCode added to `GET` endPoint
- `PATCH` endPoint updated to reflect async Booking Cancellation
- `Booking Notification` updated (_in lightweight Notifications_):
  - `bookingCancellationStatus` added as property in both lightweight and full Notifications
  - `feedbacks` property added as an array of `Feedback` objects in both lightweight and full Notifications
  - `reason` field removed (replaced by `feedbacks`) in both lightweight and full Notifications
  - `booking` and `amendedBooking` objects (_used for full Notifications_) updated just like `Booking` object below
- `CreateBooking`, `UpdateBooking` and `Booking` objects updated with:
  - `carrierCodeListProvider` description for `NMFTA` is updated
- `Booking` object (only) additionally updated with:
  - `reason` property removed
  - condition on `feedbacks` removed
  - `bookingCancellationStatus` added
- `message` maxLength updated from 500 --> 5000 in `Feedback` object
- `errorCodeMessage` maxLength updated from 200 --> 5000 in `DetailedError` object
- `Address` and `PartyAddress` objects updates:
  - `street` maxLength changed from 100 --> 70
  - `PObox` added as property
  - `city` maxLength changed from 65 --> 35
- `BookingRefStatus` object updated with:
  - `bookingCancellationStatus` added
  - condition on `feedbacks` removed
  - `reason` property removed
- `BookingRefCancelledStatus` object no longer needed
- `BookingAgent` object changes:
  - `partyName` maxLength changed from 100 --> 70
  - `bookingAgentsReference` renamed to `reference`
- `Shipper` object changes:
  - `partyName` maxLength changed from 100 --> 70
  - `shippersReference` renamed to `reference`
  - `shippersPurchaseOrderReference` renamed to `purchaseOrderReference`
- `Consignee` object changes:
  - `partyName` maxLength changed from 100 --> 70
  - `consigneesReference` renamed to `reference`
  - `consigneesPurchaseOrderReference` renamed to `purchaseOrderReference`
- `ServiceContractOwner` object changes:
  - `partyName` maxLength changed from 100 --> 70
  - `werviceContractOwnersReference` renamed to `reference`
- `CarrierBookingOffice` object changes:
  - `partyName` maxLength changed from 100 --> 70
- `Party` object changes:
  - `partyName` maxLength changed from 100 --> 70
- `name` maxLength changed from 100 --> 35 in `PartyContactDetail` object
- `IdentifyingCode` object changes:
  - `EU` added to the `codeListProvider` values
  - `EORI` added to `codeListName` values
  - `partyCode` maxLength changed from 100 --> 150
- In `RequestedEquipment` (and `RequestedEquipmentShipper`) objects:
  - `emptyContainerPositionings` has been renamed to `containerPositionings` as only the first position in the list is empty
  - descriptions for `containerPositionings` updated
  - `emptyContainerPickupDateTime` and `emptyContainerDepotReleaseLocation` merged into an object with 2 properties: `dateTime` and `depotReleaseLocation`
- `ContainerPositioning` object has renamed:
  - `emptyContainerPositioningDateTime` to just `dateTime`
  - `emptyContainerPositioningLocation` to just `location`
- same changes as the `RequestedEquipment` also applies to `ConfirmedEquipment`  with:
  - `EmptyContainerPositioningEstimated` being called `ContainerPositioningEstimated`
  - `estimatedEmptyContainerPositioningDateTime` renamed to `estimatedDateTime`
  - `emptyContainerPositioningLocation` renamed to `location`
- `Schedule B` changed to `SCHEDULE B` in `type` in `NationalCommodityCode` object and a typo was fixed in the description
- in Dangerous Goods (DG):
  - `isCompetentAuthorityApprovalProvided` renamed to `isCompetentAuthorityApprovalRequired`

<a name="v200B20240816"></a>[Release v2.0.0 Beta 20240816 (16 August 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/2.0.0-Beta-20240816)
---
Snapshot as of 16 of August 2024 for Booking 2.0.0 Beta
## Key changes
- `202` response code added to all endPoints
- maxLength of `value` property of all references changed from `100` --> `35` (in order to align with EDI)
- `CustomReference` now allows a list of values
- support for multiple `ECP` (Empty Container Positioning) locations

## All changes
- API description updated
- all endPoint descriptions updated to support `202` response
- `202` response code added to all endPoints
- `404` (Not Found) added to `PUT` and `PATCH` endPoints
- `declaredValue` description updated
- `carrierCode` and `carrierCodeListProvider` added to `CreateBooking`, `UpdateBooking` and `Booking` object. Also added to the `booking` and `amendedBooking` object in the Notification
- `maxLength=100` changed to `maxLength=35` (in order to be EDI compatible):
  - in `bookingAgentsReference` in `BookingAgent` party object
  - in `shippersReference` in `Shipper` party object
  - in `shippersPurchaseOrderReference` in `Shipper` party object
  - in `consigneesReference` in `Consignee` party object
  - in `consigneesPurchaseOrderReference` in `Consignee` party object
  - in `serviceContractOwnersReference` in `ServiceContractOwner` party object
  - in `reference` in `Party` object
  - in `value` in `TaxLegalReference` object
  - in `value` in `Reference` and `ReferenceShipper` objects
- `CustomReference` object has the following changes:
  - `maxLength=100` changed to `maxLength=35` for the `value` property
  - the `value` property has been renamed to `values` and is now a list of values instead of a single value
- `RequestedEquipment` and `RequestedEquipmentShipper` object structures changed and now allows for a list of `emptyContainerPositionings` instead of a single `emptyContainerPositioningLocation` together with an optional `emptyContainerPositioningDateTime`
- `EmptyContainerPositioning` object added which consists of an `emptyContainerPositioningLocation` together with an optional `emptyContainerPositioningDateTime`
- `EmptyContainerPositioningEstimated` object added which consists of an `emptyContainerPositioningLocation` together with an optional `estimatedEmptyContainerPositioningDateTime`
- `ConfirmedEquipment` object structure changed and now allows for a list of `emptyContainerPositionings` instead of a single `emptyContainerPositioningLocation` together with an optional `estimatedEmptyContainerPositioningDateTime`

<a name="v200B20240726"></a>[Release v2.0.0 Beta 20240726 (26 July 2024)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_BKG/2.0.0-Beta-20240726)
---
Snapshot as of 26 of July 2024 for Booking 2.0.0 Beta
## Key changes
- Notification endPoints added (supporting both `Lightweight` and `Full State Transfer` Notifications)
- `requestedChanges` replaced by `Feedback` object
- locations no longer use `oneOf` but is now a set of optional properties

## All changes
- API description updated
- endPoint examples updated
- `/v3/booking-notifications` added to include:
  - `Lightweight Notifications` for Booking
  - `Full State Transfer Notifications` for Booking
  - Notifications use the `CloudEvent` structure (and is merged from the deprecated [Booking Notification](./notification/) API)
- `Booking Notification` object added
- `requestedChanges` replaced by `feedbacks` for better "feedback" from provider --> consumer in the following objects: `Booking` and `BookingRefStatus`
- `RequestedChanges` object deleted
- `Feedback object` added
- locations are handled differently going forward. Locations are no longer defined using a `oneOf` but rather via optional properties. This impacts:
  - `AddressLocation` object deleted as it is no longer needed
  - `FacilityLocation` renamed to `Facility` and modified to no longer have `locationType`
  - `UnLocationLocation` object deleted as it is no longer needed
  - `GeoCoordinate` object added
- `streetNumber` is no longer a mandatory field in the `Address` nor `PartyAddress` objects
- `placeOfBLIssue` no longer defined inline but references using a $ref
- `customsReferences` added to `CreateBooking`, `UpdateBooking` and `Booking` objects
- `bookingAgentsReference` added to `BookingAgent` object
- `shippersReference` and `shippersPurchaseOrderReference` added to `Shipper` object
- `consigneesReference` and `consigneesPurchaseOrderReference` added to `Consignee` object
- `serviceContractOwnersReference` added to `ServiceContractOwner` object
- `reference` added to `Party` object
- `ReferenceShipper` object added to differentiate between references sent by consumer and references sent by provider
- references has been split into 2 objets: `Reference` and `ReferenceShipper`. Both objects now only allow: `CR`, `AKG` and `AEF`. `Reference` object (used in GET /bookings) also includes: `ECR`
- `CustomsReference` object added
- `ShipmentLocations` modified:
  - `DRL` removed
  - `location` object modified
- `emptyContainerPositioningDateTime`, `emptyContainerPositioningLocation`, `emptyContainerPickupDateTime`, `emptyContainerDepotReleaseLocation` and `customsReferences` added to `RequestedEquipment` and `RequestedEquipmentShipper`
- `EmptyContainerPositioningLocation` and `EmptyContainerDepotReleaseLocation` objects added
- `nationalCommodityCodes` and `customsReferences` added to `Commodity` and `commodityShipper`
- `NationalCommodityCode` object added
- `estimatedEmptyContainerPositioningDateTime`, `emptyContainerPositioningLocation`, `emptyContainerPickupDateTime` and `emptyContainerDepotReleaseLocation` added to `ConfirmedEquipment`
- `LoadLocation`  and `DischargeLocation` objects modified to no longer use `oneOf`
- `ECP` removed from `ShipmentCutOffTimeCode`
- `documentParties` now has `bookingAgent` as a mandatory property
- `MULTIMODAL` added as a `Mode of Transport` in the `Transport Plan`

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
- `AddressLocation` no longer needed because of new way of specifying locations
- `streetNumber` no longer a required field in `Address` nor `PartyAddress` objects
- `CityLocation` turned into a `City` object
- `FacilityLocation` turned into a `Facility` object
- `UnLocationLocation` object no longer needed because of new way of specifying locations
- `GeoCoordinate` added as new object
- `shippersReference` and `shippersPurchaseOrderReference` added to the `Shipper`-Party object
- `consigneesReference` and `consigneesPurchaseOrderReference` added to the `Consignee`-Party object
- `reference` added to the `Party` object

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
  - `title` stays as `Booking`
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
- `Party` now uses the `PartyAddress` object (instead of the `Address` object)
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
