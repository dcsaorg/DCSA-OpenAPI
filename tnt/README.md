### Track & Trace (T&T)

The DCSA Interface Standard for Track and Trace is documented on the [**DCSA TNT SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_TNT).

The purpose of an Event Hub is to send events and manage subscriptions. Track & Trace is a specialised Hub managing: **TransportEvents, EquipmentEvents and ShipmentEvents**. It is only possible to receive **TransportEvents, EquipmentEvents and ShipmentEvents** and subscribe to **TransportEvents, EquipmentEvents and ShipmentEvents** when implementing this hub.

Publication related to this specification:
-	[DCSA Information Model 2.0](https://dcsa.org/wp-content/uploads/2020/07/DCSA-Information-model-2.0-vF.pdf)
-	[DCSA Information Model Reading Guide]( https://dcsa.org/wp-content/uploads/2020/07/DCSA-Information-Model-2.0-Reading-Guide-vF.pdf)
-	[DCSA Interface for Track and Trace 1.2]( https://dcsa.org/wp-content/uploads/2020/05/DCSA-Interface-Standard-for-Track-and-Trace-1.2.pdf)
-	[DCSA Interface for Track and Trace 1.2 Reading Guide]( https://dcsa.org/wp-content/uploads/2020/05/DCSA-Interface-Standard-for-Track-and-Trace-Reading-Guide-1.2.pdf)
-	[Glossary of Terms](https://knowledge.dcsa.org/s/glossary)

### Releasenotes

### [v2.0.1](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/2.0.1)
This is supposed to be a Major update correcting errors - but at the time this API was released no one had started implementing v2.0.0 so it was decided "just" to make this a patch release

* transportCallID removed from ShipmentEvents
* shipmentID is re-introduced into ShipmentEvents
* transportCallID made mandatory on EquipmentEvents
* spelling mistake fixed in errorDateTime
* eventID format changed from string -> UUID
* scheduleID changed from number -> UUID
* transportCallID changed from number -> UUID

#### [v2.0.0](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/2.0.0)

#### Dependencies between Track and Trace and Operational Vessel Schedules APIs
In the [Information Model 2.0](https://dcsa.org/wp-content/uploads/2020/07/DCSA-Information-model-2.0-vF.pdf), details about locations have been removed from T&T events, and added to transport calls. Instead of containing location details, events contain a reference to a transport call. Transport calls are a part of the [OVS 1.0 API](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS/1.0.1), which means that the [Track & Trace](https://app.swaggerhub.com/apis/dcsaorg/DCSA_TNT) [v2.0.0](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/2.0.0) and [v2.0.1](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/2.0.1) APIs depends on functionality from the [OVS] (https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_OVS) API.

* Updated event structure to use Transport Calls
* Added Pagination
* Added Signature header to callbacks

#### [v1.2.0](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/1.2.0)
* Added event-subscription endpoints
  * Endpoint for creating subscription
  * Endpoint for deleting subscription
  * Endpoint for updating subscription
  * Endpoint for receiving list of subscriptions
  * Endpoint for reading a single subscription
* Added eventType discriminator
* Added endpoint for reading a single event by eventID

#### [v1.1.0](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/1.1.0)
* Improved error handling
* Added "modeOfTransportCode" to Transport events, and Transport Equipment events
  * Since we removed Transport and Equipment objects to keep the API focused on just Track & Trace, the Mode of Transport was missing, so it has been added
* Removed discriminator from the "events" object.
  * The discriminator did not make sense in the way it was used, and would not add any value, so we removed it
* Renamed informationTypeCode to shipmentInformationTypeCode
  * The field did not have the same name as what was specified in the interface document, hence the change
* Made equipmentReference optional in Transport Equipment events and Equipment events
  * The interface document specified that this should be optional

#### [v1.0.0](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_TNT/1.0.0)
 * Initial release of the DSCA OpenAPI definitions for Track & Trace
