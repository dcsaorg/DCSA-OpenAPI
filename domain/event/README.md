## Event Domain

The Event Domain is documented on [**EVENT_DOMAIN**](https://app.swaggerhub.com/domains/dcsaorg/EVENT_DOMAIN) SwaggerHub.

This Domain specifies common components for DCSA Events. This domain is central for all Event Hubs.

<a name="v300"></a>[Release v3.0.0 (23 December 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/EVENT_DOMAIN/3.0.0)
---
New major release of T&T

- Bump [DCSA Domain to version 2.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v203) (was previously 2.0.2)
- Bump [Documentation Domain to version 2.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v210) (was previously v2.0.2)
- Bump [Location Domain to version 2.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v203) (was previously 2.0.2)
- update description of `Signature` header to be more markdown compliant
- removed the 'Deprecation' marker on `eventID`
- `bookingReference`, `carrierVoyageNumber`, `exportVoyageNumber`, `scheduleID`, `transportDocumentID` deleted as a query parameter as it is no longer in use
- `documentReference` added as a query parameter
- `documentTypeCode` renamed to `documentTypeCodes` and updated:
  - `SRM` replaced with `DEI`, `DEO`, `TRO` and `CRO`
  - `CUS` (Customs Inspection) renamed to `CUC` (Customs Clearance)
  - `CQU` (Contract Quotation) and `INV` (Invoice) added
  - `INV` (Invoice) added
  - `HCE` (Health Certificate) added
  - `PCE` (Phytosanitary Certificate) added
  - `VCE` (Veterinary Certificate) added
  - `FCE` (Fumigation Certificate) added
  - `ICE` (Inspection Certificate) added
  - `CEA` (Certificate of Analysis) added
  - `CEO` (Certificate of Origin) added
  - description improved
- `equipmentEventTypeCode` renamed to `equipmentEventTypeCodes` and updated:
  - `AVPU` (Available for Pick-up), `AVDO` (Available for Drop-off) added
  - `CUSS` (Customs Selected for Scan), `CUSI` (Customs Selected for Inspection) and `CUSR` (Customs Released) added
  - `CROS` (Crossed) added
  - description improved
- `eventCreatedDateTime` description improved
- `eventDateTime` added as query parameter
- `operationsEventTypeCode` renamed to `operationsEventTypeCodes` and description improved
- `shipmentEventTypeCode` renamed to `shipmentEventTypeCodes` and description improved
- `shippingInstructionID` renamed to `shippingInstructionReference` and description improved
- `transportCallID` renamed to `transportCallReference` and description improved
- `transportEventTypeCode` renamed to `transportEventTypeCodes` and description improved
- `universalExportVoyageReference` and `universalServiceReference` added as query parameters
- `event` payload changed - it now consists of two parts:
  - `metadata` - this part consists of all metadata for the event: `eventID`, `eventCreatedDateTime`, `eventType` and `retractedEventID`. `metadata` is a required field
  - `payload` - is the business part of the event. `payload` is an optional part of the event. If the event is retracting a previously emitted event then the `payload` is empty otherwise the `payload` is mandatory. The `paylaod` changes from event type to event type, 3 types of `payload` are supported:
    - `shipmentPayload` <-- payload for a ShipmentEvent
    - `equipmentPayload` <-- payload for an EquipmentEvent
    - `transportPayload` <-- payload for a TransportEvent
- the following has changed in a `ShipmentEvent`
  - `documentID` has been renamed to `documentReference`
  - deprecated fields removed
  - `documentReferences` has been renamed to `relatedDocumentReferences`
-  the following has changed in a `TransportEvent`
  - deprecated fields removed
  - `documentReferences` has been renamed to `relatedDocumentReferences`
  - `transportCall` object has been modified - see further down
-  the following has changed in a `EquipmentEvent`
  - deprecated fields removed
  - `documentReferences` has been renamed to `relatedDocumentReferences`
  - `transportCall` object has been modified - see further down
  - `isTransshipmentMove` added as a boolean field
  - `eventLocation` now uses the following location-interfaces: **facilityLocation**, **unLocationLocation** and **addressLocation** instead of the "general" location object
  - `facilityTypeCode` added (it was forgotten in the T&T 2.0 release)
- the following has changed in a `ShipmentSubscription`
  - `shipmentEventTypeCode` renamed to `shipmentEventTypeCodes`
  - `documentTypeCode` renamed to `documentTypeCodes`
  - `documentReference` added as a field and has substituted `carrierBookingRequestReference`, `carrierBookingReference` and `transportDocumentReference`
- the following has changed in a `EquipmentSubscription`
  - `equipmentEventTypeCode` renamed to `equipmentEventTypeCodes`
  - all fields belonging to `transportCallSubscriptionBody` added
- the following has changed in a `TransportSubscription`
  - `transportEventTypeCode` renamed to `transportEventTypeCodes`
  - all fields belonging to `transportCallSubscriptionBody` added
- `transportCallSubscriptionBody` created including:
  - all deprecations removed
  - `transportCallReference` renamed from `transportCallID`
  - `vesselIMONumber`
  - `carrierExportVoyageNumber` renamed from `carrierVoyageNumber`
  - `universalExportVoyageReference`
  - `carrierServiceCode`
  - `universalServiceReference`
  - `UNLocationCode`
- `documentReferences` renamed to `relatedDocumentReferences` with the following updates:
  - `documentReferenceType` renamed to `type`
  - `documentReferenceValue` renamed to `value` and maxLength set to 100
- `transportCall` object updated:
  - remomved `transportCallID` and `carrierVoyageNumber`
  - `exportVoyageNumber` renamed to `carrierExportVoyageNumber`
  - `universalServiceReference`, `universalExportVoyageReference` and `universalImportVoyageReference` added
  - `importVoyageNumber` renamed to `carrierImportVoyageNumber`
  - removed `geoLocation` interface from `location`
  - `facilityTypeCode` updated: `COYA` removed, `BOCR` (Border crossing) renamed to `BORD` (Border) and `WAYP` (Waypoint) added
  - `facilityCode`, `facilityCodeListProvider`, `otherFacility` and `UNLocationCode` removed from `transportCall` - the fields in the location object should be used
  - `vessel` object updated. All prefixed `vessel` in field names removed except in `vesselIMONumber`
 - `reference` object updated. `referenceType` and `referenceValue` renamed to `type` and `value`
- `changeRemark` description updated
- `documentID` renamed to `documentReference` and limited to maxLength 100
- `documentTypeCode` updated:
  - `SRM` replaced with `DEI`, `DEO`, `TRO` and `CRO`
  - `CUS` (Customs Inspection) renamed to `CUC` (Customs Clearance)
  - `CQU` (Contract Quotation) and `INV` (Invoice) added
  - `INV` (Invoice) added
  - `HCE` (Health Certificate) added
  - `PCE` (Phytosanitary Certificate) added
  - `VCE` (Veterinary Certificate) added
  - `FCE` (Fumigation Certificate) added
  - `ICE` (Inspection Certificate) added
  - `CEA` (Certificate of Analysis) added
  - `CEO` (Certificate of Origin) added
  - description improved
- `documentTypeCodes` description updated
- `equipmentEventTypeCode` updated:
  - `AVPU` (Available for Pick-up), `AVDO` (Available for Drop-off) added
  - `CUSS` (Customs Selected for Scan), `CUSI` (Customs Selected for Inspection) and `CUSR` (Customs Released) added
  - `CROS` (Crossed) added
  - description improved
 - `equipmentEventTypeCodes` description updated
 - `subscriptionCreatedDateTime` and `subscriptionUpdatedDateTime` added
 
<a name="v202"></a>[Release v2.0.2 (5 July 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/EVENT_DOMAIN/2.0.2)
---
Bump domains and add `MilesToDestinationPort` and `vesselDraft` to the `OperationsEvent`

- Bump [DCSA Domain to version 2.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v202) (was previously 2.0.1)
- Bump [Documentation Domain to version 2.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v202) (was previously v2.0.1)
- Bump [Location Domain to version 2.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v202) (was previously 2.0.1)
- Add `milesToDestinationPort` to `operationsEvent`
- Add `vesselDraft` and `vesselDraftUnit` to `operationsEvent`
- `TransportCall` object has the following changes:
  - `transportCallID` marked as deprecated - use `transportCallReference` instead
  - `portVisitReference` added
  - `importVoyageNumber` and `exportVoyageNumber` both deprecated and `carrierImportVoyageNumber` and `carrierExportVoyageNumber` added
  - Type fixed: Moording --> Mooring
- `eventType` description updated and enum values supplied
- `eventTypeCode` removed
- `retractedEventID` added
- `subscriptionCreatedDateTime` and `subscriptionUpdatedDateTime` added

<a name="v201"></a>[Release v2.0.1 (30 June 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/EVENT_DOMAIN/2.0.1)
---
The APIs for Booking v1.0 Beta 2, EBL v2.0 Beta 2, JIT v1.2 and OVS v3.0 all use this version of the Domain

- Bump [DCSA Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v201) (was previously 2.0.0)
- Bump [Documentation Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v201) (was previously v2.0.0)
- Bump [Location Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v201) (was previously 2.0.0)
- `operationsEventTypeCode` updated with `OMIN` (Omitted) and `CANC` (Cancelled)
- `eventDateTime` description in the `ShipmentEvent` updated
- `transportCall` has been made mandatory in the `OperationsEvent`
- `portCallServiceTypeCode` have removed `WSDP` (Waste dispoal) and added the following values:
  - ANCO (Anchorage)
  - SLUG (SLudge)
  - SHPW (Shore Power)
  - LCRO (Loading cargo operations)
  - DCRO (Discharge cargo operations)
  - VRDY (Vessel ready)
- `publisherRole` description updated (upgraded all values to non-'experimental') and added:
  - `MOR` (Mooring service provider)
  - `SLU` (Sludge service provider)
  - `SVP` (Any other service Provider)

<a name="v200"></a>[Release v2.0.0 (06 April 2022)](https://app.swaggerhub.com/domains-docs/dcsaorg/EVENT_DOMAIN/2.0.0)
---
The APIs for Booking v1.0 Beta 1 and EBL v2.0 Beta 1 both use this version of the Domain

NB: Not updated yet...

- Bump [DCSA Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v200) (was previously 1.0.3)
- Bump [Documentation Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v200) (was previously v1.0.4)
- Bump [Location Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v200) (was previously 1.0.3)
- Added `carrierBookingRequestReference` as a query parameter
- `documentTypeCode` query parameter description updated and GitHub link added
- `shipmentEventTypeCode` (both query Parameter and Simple type) updated with new enum values and GitHub link added
  - PENC (Pending Confirmation)
  - CANC (Cancelled)
- `documentReferences` added to `ShipmentEvent`
- `facilityTypeCode` added to `TransportEvent` and `EquipmentEvent`
- `references` no longer reffers to DocumentationDomain as the references differ (no refernceType `EQ` in DocumentationDomain)
- `transportDocumentTypeCode` description updated in the `shipmentSubscriptionBody` object
- added extra enum values to `documentReferenceType`
  - CBR (Carrier Booking Request Reference)
  - SHI (Shipping Instruction ID)
- in `TransportCall` the following fields have been deprecated:
  - `UN Location Code` (use `UN Location Code` in the `location` object instead)
  - `facilityCode` (use `facilityCode` in the `location` object instead)
  - `facilityCodeListProvider` (use `facilityCodeListProvider` in the `location` object instead)
  - `otherFacility` (use `address` object in the `location` object instead)
  - `facilityTypeCode` (has been moved to event root level)
- `location` object of `TransportCall` has been modified to utilize the new "interfaces" that are defined in the Location Domain
- `references`, `referenceType` and `referenceValue` have been declared locally in this Domain instead of using the ones defined in Documentation Domain - reason for this is they differ
- `reason` field in the `ShipmentEvent` now has a limit of 250 characters
- `transportDocumentTypeCodes` example and link updated

<a name="v111"></a>[Release v1.1.1 (16 November 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/EVENT_DOMAIN/1.1.1)
---
Upgrade to JIT v1.1
NB: This version is an agregation of 1.1.0 and 1.0.4 plus the following items:
- Domain Description updated
- Bump [Documentation_Domain to version 1.0.4](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v104)
- Bump [Location_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v103)
- Bump [DCSA_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v103)

- `portCallServiceTypeCode` is no longer a mandatory field in `OperationsEvent`
- `publisher` and `publisherRole` are now mandatory fields in `OperationsEvent`
- updated `portCallServiceTypeCode` with the following values:
  - FAST (AT All Fast)
  - GWAY (AT Gangway down and secure)
  - LASH (Lashing)
  - SAFE (Safety)
- updated `publisherRole` with the following values:
  - TWG (Experimental: Towage serice provider)
  - LSH (Experimental: Lashing serice provider)
  - BUK (Experimental: Bunker serice provider)
- `portCallPhaseTypeCode` added as an optional field to `OperationsEvent`
- updated OperationsSubscriptions to also include `transportCallID`, `vesselIMONumber`, `carrierVoyageNumber`, `exportVoyageNumber`, `carrierServiceCode` and `UNLocationCode` as filter parameters (needed in this release because of JIT Event Hub)

<a name="v104"></a>[Release v1.0.4 (28 October 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/EVENT_DOMAIN/1.0.4)
---
This release is to update T&T v2.2 (T&T with new subscription  module)
- Bump [Location_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v103)
- Bump [Documentation_Domain to version 1.0.4](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v104)
- Bump [DCSA_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v103)
- `documentTypeCode` added as query filter parameter and as `Shipment` subscription filter
- `PICK`, `DROP`, `INSP`, `RSEA` and `RMVD` added to `EquipmentEventTypeCode` and `EquipmentEventTypeCodes`
- `eventClassifierCode` added as a simple object
- `REQS`, `CMPL`, `HOLD` and `RELS` added as `shipmentEventTypeCode` and `shipmentEventTypeCodes`
- `transportDocumentTypeCode` query parameter filter has been removed as well as made depracated on `Shipment` subscriptions
- `UNLocationCode` added as a query parameter filter and added as filter on `Equipment`, `Transport` and `Operations` subscriptions
- `eventLocation` is added as an optional field on EquipmentEvent
- `transportCall` is now an optional field on EquipmentEvent
- Use globally defined `facilityTypeCodeOPR` in `DCSA_Domain` to align with later versions instead of locally defined version
- `carrierVoyageNumber` deprecated and replaced by `exportVoyageNumber` and `importVoyageNumber` in `TransportCall`
- `documentID` example added
- `CBR` (Carrier Booking Request Reference) added as `documentTypeCode` and `documentTypeCodes` (in order to support Booking once it is published)
- `VGM`,`CAS`,`CUS`,`DGD` and `OOG` added as `documentTypeCode` and `documentTypeCodes`
- GitHub link added to `documentTypeCode`, `equipmentEventTypeCode`, `operationsEventTypeCode`, `portCallServiceTypeCode`, `publisherRole`, `shipmentEventTypeCode` and `transportEventTypeCode`
- `carrierVoyageNumber` queryParameter has become deprecated - `exportVoyageNumber` should be used instead
- `exportVoyageNumber` added as queryParameter and as filter option in `Transport` subscriptions

<a name="v110"></a>[Release v1.1.0 (1 September 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/EVENT_DOMAIN/1.1.0)
---
Cleanup done for OVS major release. Deprecated fields removed from Events.
**NB:** This version is released before 1.0.4 - so all updates in 1.0.4 are **not** included here
- remove deprecated `scheduleID` from `TransportSubscriptionBody`
- An alternative `TransportSubscriptionBodyWithScheduleID` has been created to support backward compatability in T&T
- `eventClassifierCode` added as a simple object
- removed deprecated `vesselScheduleChangeRemark`, `transportCallID` and `eventTypeCode` from the `Operations-TransportEvent` (they are still included in the `TransportEvent` used for T&T)

<a name="v103"></a>[Release v1.0.3 (31 August 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/EVENT_DOMAIN/1.0.3)
---
Purpose of this release is to update the `Party`-object to include the new `Party Identifiers` (needed for OVS JIT)
- Bump [Documentation_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v103) only for `Party` object to inlcued the new `Party Identifier Code`

<a name="v102"></a>[Release v1.0.2 (30 August 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/EVENT_DOMAIN/1.0.2)
---
This release focuses on splitting the `TransportEvent` in 2 - one for T&T containing `documentReferences`, `references` and one for OVS where they are removed
- Bump [DCSA_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v102)
- Bump [Documentation_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v102)
- Bump [Location_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v102)
- Update UUID examples
- `delayReasonCode` in Transport- and Operations-Event now points to DCSA_Domain instead of a local definition (which is removed)
- removed all the Event-objects with no ID
- removed `documentReferences` and `references` from the `TransportEvent` base object and made 2 versions of it - one for OVS and one for T&T (also including `documentReferences` and `references`
- made a PublisherRole object to be used instead of an extended version of partyFunction codes
- added `transportCallSequenceNumber` to the `transportCall` object
- removed the Vessel object since it is already defined in the `Documentation Domain`

<a name="v101"></a>[Release v1.0.1 (02 August 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/EVENT_DOMAIN/1.0.1)
---
- Bump [DCSA_Domain to version 1.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v101)
- Bump [Documentation_Domain to version 1.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v101)
- Bump [Location_Domain to version 1.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v101)
- Fixed the baseType property of the baseEventBody
- `equipmentEventTypeCodes`, `operationsEventTypeCodes`, `shipmentEventTypeCodes`, `transportEventTypeCodes` and `transportDocumentTypeCodes` in Subscriptions were wrongly defined as a comma separated string - now they are a list
- Renamed `changeRemark` in OperationsEvents to `remark`
- TransportCall location field description updated
- location no longer a mandatory field of TransportCall
- remark added as simple type
- secret example updated

<a name="v100"></a>[Release v1.0.0 (30 June 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/EVENT_DOMAIN/1.0.0)
---
- Domain created and released
