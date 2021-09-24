## Event Domain

The Event Domain is documented on [**EVENT_DOMAIN**](https://app.swaggerhub.com/domains/dcsaorg/EVENT_DOMAIN) SwaggerHub.

This Domain specifies common components for DCSA Events. This domain is central for all Event Hubs.

<a name="v111"></a>[Release v1.1.1 (unreleased)](https://app.swaggerhub.com/domains-docs/dcsaorg/EVENT_DOMAIN/1.1.1)
---
- Domain Description updated
- Bump [DCSA_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v110)
- Bump [Documentation_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v110)
- Bump [Location_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/location#v103)
- `UNLocationCode` added as a filter
- updated `portCallServiceTypeCode` with the following values:
  - FAST (AT All Fast)
  - GWAY (AT Gangway down and secure)
  - LASH (Lashing)
  - SAFE (Safety)
- updated `publisherRole` with the following values:
  - TWG (Experimental: Towage serice provider)
  - LSH (Experimental: Lashing serice provider)
  - BUK (Experimental: Bunker serice provider)
- BAI (Booking Acknowledgement ID) added to `documentTypeCodes` used in the `ShipmentEvent`

<a name="v110"></a>[Release v1.1.0 (1 September 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/EVENT_DOMAIN/1.1.0)
---
Cleanup done for OVS major release. Deprecated fields removed from Events
- remove deprecated `scheduleID` from `TransportSubscriptionBody`
- An alternative `TransportSubscriptionBodyWithScheduleID` has been created to support backward compatability in T&T
- `eventClassifierCode` added as a simple object
- removed deprecated `vesselScheduleChangeRemark`, `transportCallID` and `eventTypeCode` from the `Operations-TransportEvent` (they are still included in the `TransportEvent` used for T&T)

<a name="v103"></a>[Release v1.0.3 (31 August 2021)](https://app.swaggerhub.com/domains-docs/dcsaorg/EVENT_DOMAIN/1.0.3)
---
Purpose of this release is to update the `Party`-object to include the new `Party Identifiers` (needed for OVS JIT)
- Bump [Documentation_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v103)

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
