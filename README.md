# DCSA – Digital Container Shipping Association

### About DCSA
DCSA envisions a digitally interconnected container shipping industry. Our mission is to be the de facto standards body for the industry, setting the technological foundation for interoperable IT solutions. Together with our member carriers, DCSA creates vendor-neutral, technology-agnostic standards for IT and non-competitive business practices. By working towards the widespread adoption of these standards, our aim is to move the industry forward in terms of customer experience, efficiency, collaboration, innovation and respect for the environment.
### The objective of DCSA
Data and Interface Standard project workstream is to strengthen the container shipping industry’s ability to send and receive data across all parties in the industry. Furthermore, it aims at to enhance inter-carrier cooperation based on shared requirements and to ensure interoperability by using a shared data language. You can find relevant **publications** on [DCSA website](https://dcsa.org/), in particular:
-	[DCSA Information Model 2.0](https://dcsa.org/wp-content/uploads/2020/07/DCSA-Information-model-2.0-vF.pdf),[DCSA Information Model 3.0](https://dcsa.org/wp-content/uploads/2020/12/20201208-DCSA-P1-DCSA-Information-Model-v3.0-FINAL.pdf)
-	[DCSA Information Model Reading Guide]( https://dcsa.org/wp-content/uploads/2020/07/DCSA-Information-Model-2.0-Reading-Guide-vF.pdf)
-	[DCSA Interface for Operational Vessel Schedules 1.0]( https://dcsa.org/wp-content/uploads/2020/07/DCSA-Interface-Standard-for-Operational-Vessel-Schedules-1.0-vF.pdf)
-	[DCSA Interface for Operational Vessel Schedules Reading Guide]( https://dcsa.org/wp-content/uploads/2020/07/DCSA-Interface-Standard-for-Operational-Vessel-Schedules-1.0-Reading-Guide-vF.pdf)
-	[Operational Vessel Schedule Definitions 1.0]( https://dcsa.org/wp-content/uploads/2020/07/Operational-Vessel-Schedule-definitions-1.0-vF.pdf)
-	[DCSA Interface for Track and Trace 1.2]( https://dcsa.org/wp-content/uploads/2020/05/DCSA-Interface-Standard-for-Track-and-Trace-1.2.pdf)
-	[DCSA Interface for Track and Trace 1.2 Reading Guide]( https://dcsa.org/wp-content/uploads/2020/05/DCSA-Interface-Standard-for-Track-and-Trace-Reading-Guide-1.2.pdf)
-	[Glossary of Terms 2.0]( https://dcsa.org/wp-content/uploads/2020/07/GLOSSARY-OF-TERMS-2.0-vF.pdf)

### OpenAPI definition

The DCSA Interface Standard for Track and Trace is documented on the [**DCSA TNT SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_TNT).

The DCSA Interface Standard for Operational Vessel Schedules is documented on the [**DCSA OVS SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OVS).


### Dependencies between Track and Trace and Operational Vessel Schedules APIs
In the Information Model 2.0, details about locations have been removed from T&T events, and added to transport calls. Instead of containing location details, events contain a reference to a transport call. Transport calls are a part of the OVS 1.0 API, which means that the T&T 2.0 API depends on functionality from the OVS 1.0 API.

### Releasenotes
#### Track and Trace 1.0
 * Initial release of the DSCA OpenAPI definitions for Track & Trace

####  Track and Trace 1.1
* Improved error handling
* Added "modeOfTransportCode" to Transport events, and Transport Equipment events
  * Since we removed Transport and Equipment objects to keep the API focused on just Track & Trace, the Mode of Transport was missing, so it has been added
* Removed discriminator from the "events" object.
  * The discriminator did not make sense in the way it was used, and would not add any value, so we removed it
* Renamed informationTypeCode to shipmentInformationTypeCode
  * The field did not have the same name as what was specified in the interface document, hence the change
* Made equipmentReference optional in Transport Equipment events and Equipment events
  * The interface document specified that this should be optional

#### Track and Trace 1.2
* Added event-subscription endpoints
  * Endpoint for creating subscription
  * Endpoint for deleting subscription
  * Endpoint for updating subscription
  * Endpoint for receiving list of subscriptions
  * Endpoint for reading a single subscription
* Added eventType discriminator
* Added endpoint for reading a single event by eventID

#### Track and Trace 2.0
* Updated event structure to use Transport Calls
* Added Pagination
* Added Signature header to callbacks

#### Operational Vessel Schedules 1.0
* Initial release of the DCSA OpenAPI definitions for Operational Vessel Schedules
