## <a name="tith"></a>This is the Heading

## <a name="release-v111"></a>Release v1.1.1 (unreleased)
- Bump [DCSA_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/dcsa/dcsa_domain_v1.1.0.yaml)
- Bump [Documentation_Domain to version 1.1.0](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/documentation/documentation_domain_v1.1.0.yaml)
- Bump [Location_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/location/dcsa_location_v1.0.3.yaml)
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

## <a name="release-v110"></a>Release v1.1.0 (1 September 2021)
- remove deprecated `scheduleID` from `TransportSubscriptionBody`
- An alternative `TransportSubscriptionBodyWithScheduleID` has been created to support backward compatability in T&T
- `eventClassifierCode` added as a simple object
- removed deprecated `vesselScheduleChangeRemark`, `transportCallID` and `eventTypeCode` from the `OperationsTransportEvent` (they are still included in the `TransportEvent`)

[Release v1.0.3](#release-v103) (31 August 2021)
-------------------------------
- Bump [Documentation_Domain to version 1.0.3](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/documentation/documentation_domain_v1.0.3.yaml)

Release v1.0.2 (30 August 2021)
-------------------------------
- Bump [DCSA_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/dcsa/dcsa_domain_v1.0.2.yaml)
- Bump [Documentation_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/documentation/documentation_domain_v1.0.2.yaml)
- Bump [Location_Domain to version 1.0.2](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/location/dcsa_location_v1.0.2.yaml)
- Update UUID examples
- `delayReasonCode` in Transport- and Operations-Event now points to DCSA_Domain instead of a local definition (which is removed)
- removed all the Event-objects with no ID
- removed `documentReferences` and `references` from the `TransportEvent` base object and made 2 versions of it - one for OVS and one for T&T (also including `documentReferences` and `references`
- made a PublisherRole object to be used instead of an extended version of partyFunction codes
- added `transportCallSequenceNumber` to the `transportCall` object
- removed the Vessel object since it is already defined in the `Documentation Domain`

Release v1.0.1 (02 August 2021)
-------------------------------
- Bump [DCSA_Domain to version 1.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/dcsa/dcsa_domain_v1.0.1.yaml)
- Bump [Documentation_Domain to version 1.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/documentation/documentation_domain_v1.0.1.yaml)
- Bump [Location_Domain to version 1.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/blob/master/domain/location/dcsa_location_v1.0.1.yaml)
- Fixed the baseType property of the baseEventBody
- `equipmentEventTypeCodes`, `operationsEventTypeCodes`, `shipmentEventTypeCodes`, `transportEventTypeCodes` and `transportDocumentTypeCodes` in Subscriptions were wrongly defined as a comma separated string - now they are a list
- Renamed `changeRemark` in OperationsEvents to `remark`
- TransportCall location field description updated
- location no longer a mandatory field of TransportCall
- remark added as simple type
- secret example updated

Release v1.0.0 (30 June 2021)
-----------------------------
- Domain created and released
