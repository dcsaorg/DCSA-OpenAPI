# DCSA – Digital Container Shipping Association

### About DCSA
Digital Container Shipping Association is a neutral and non-profit organization that drives interoperability in the shipping industry through standardization. The goal is to develop information technology and security standards that help to exchange data across the industry. In this respect information and data are critical for the container shipping industry not only for use within the individual liner carriers, but also for sharing vital updates across the industry. Today the data landscape in the industry is complex. Carriers, customers and third parties use many different technologies, data definitions and data exchange methods when communicating with each other. You can find relevant **publications** on [DCSA website](https://dcsa.org/), in particular:
-	[DCSA Information Model 1.0](https://dcsa.org/wp-content/uploads/2020/01/DCSA-Information-Model-1.0.pdf)
-	[DCSA Information Model Reading Guide]( https://dcsa.org/wp-content/uploads/2020/01/DCSA-Information-Model-1.0-Reading-Guide.pdf)
-	[DCSA Interface for Track and Trace 1.0]( https://dcsa.org/wp-content/uploads/2020/01/DCSA-Interface-Standard-for-Track-and-Trace-1.0.pdf)
-	[DCSA Interface for Track and Trace Reading Guide]( https://dcsa.org/wp-content/uploads/2020/01/DCSA-Interface-Standard-for-Track-and-Trace-1.0-Reading-Guide.pdf)
-	[Event Naming Convention 1.0]( https://dcsa.org/wp-content/uploads/2020/01/DCSA-event-naming-convention-Publishing-1.0.pdf)
-	[Event Structure Definitions 1.0]( https://dcsa.org/wp-content/uploads/2020/01/Event-structure-Definitions-1.0.pdf)
-	[Glossary of Terms 1.1]( https://dcsa.org/wp-content/uploads/2020/01/GLOSSARY-OF-TERMS-1.1.pdf)

### OpenAPI definition
The DCSA Interface Standard for Track and Trace 1.0 is documented on [**DCSA SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_TNT).


### Releasenotes

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
