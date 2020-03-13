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
The DCSA Interface Standard for Track and Trace 1.0 is documented on [**DCSA SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_OAS).

### Versioning
DCSA’s OpenAPI definitions on Swaggerhub are being versioned in accordance with the semantic versioning scheme (http://semver.org). There are many ways a version can be represented in an API implementation. The API provider compliant with the DCSA specifications is welcome to support multiple methods of representing versions. However, every provider should at least support URI based versioning.

In order to be compliant with the DCSA track and trace interface standard, every endpoint URI must be prefixed with,

`/dcsa/tnt/vX`

Where,<br/>
X represents the major version number.<br/>

Here’s an example for track and trace version 1.0.0,<br/>
`/dcsa/tnt/v1/events?bookingReference={bookingReference}`<br/>

Every provider must host only the major version, ensuring backwards compatibility for minor and patch versions.

In response, all APIs must return an HTTP header indicating the version of the API. The version returned should be the complete version number including the major, minor and patch number. It should follow the format as specified below,

`DCSA-Content-Type: dcsa.tnt; version=X.Y.Z`

Where,<br/>
X represents the major version number.<br/>
Y represents the minor version number.<br/>
Z represents the patch version number.<br/>

Here’s an example of the response HTTP header for version 1.0.0,<br/>
`DCSA-Content-Type: dcsa.tnt; version=1.0.0`<br/>


|                             |                         |               |
|-----------------------------|-------------------------|---------------|
| HTTP code                   | Error code              | Error message |
| 400 – Bad Request           | invalidParameter        | An invalid parameter or parameter value was supplied in the  |
| 400 – Bad Request           | missingParameter        | The API request is missing a required |
| 400 – Bad Request           | invalidQuery            | The request query was invalid\. Check the documentation to ensure that the supplied parameters are supported, and check if the request contains an invalid combination of parameters, or an invalid value\. |
| 401 \- Unauthorized         | missingCredentials      | The user is not authorized to make the |
| 401 \- Unauthorized         | invalidCredentials      | The supplied authorization credentials for the request are  |
| 401 \- Unauthorized         | expiredAccessToken      | The supplied Access Token has expired |
| 403 \- Forbidden            | accessDenied            | The requested operation is forbidden\.|
| 403 \- Forbidden            | insufficientPermissions | The authenticated user is not permitted to execute this request\.|
| 404 – Not found             | notFound                | The requested resource could not found\.|
| 405 – Method not allowed    | httpMethodNotAllowed    | The HTTP method for the request is not supported\.|
| 429 – Too many requests     | rateLimitExceeded       | Too many requests have been sent recently\.|
| 500 – Internal server error | internalError           | The request failed due to an internal error\.|

### Releasenotes

#### Release 1.1
* Improved error handling
* Added "modeOfTransportCode" to Transport events, and Transport Equipment events
  * Since we removed Transport and Equipment objects to keep the API focused on just Track & Trace, the Mode of Transport was missing, so it has been added
* Removed discriminator from the "events" object. 
  * The discriminator did not make sense in the way it was used, and would not add any value, so we removed it


