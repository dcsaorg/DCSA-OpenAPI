### Electronic Bill of Lading (EBL)

The DCSA Interface Standard for Electronci Bill of Lading is documented on the [**DCSA EBL SwaggerHub**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_EBL).

Publications related to this specification:
- [DCSA Information Model v2022.1](https://dcsa.my.salesforce.com/sfc/p/#2o000000YvHJ/a/7T000000bnvo/id.kB9TVoeYABFV8NwRBQvgVkWXXK7DAuIelpCDw13M)
-	[DCSA Information Model Reading Guide](https://dcsa.org/wp-content/uploads/2020/07/DCSA-Information-Model-2.0-Reading-Guide-vF.pdf)
- [Interface standards for EBL](https://dcsa.my.salesforce.com/sfc/p/2o000000YvHJ/a/7T000000bo71/WrX_2alnNnKI.tCt6vcHilJ2cjk_FDDd7cPRaNrKvwk)
-	[Glossary of Terms](https://knowledge.dcsa.org/s/glossary)

<a name="v200B2"></a>[Release v2.0.0 Beta 2 (...)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL/2.0.0-Beta-2)
---
Beta 2 release of the DCSA OpenAPI definitions for Bill of Lading 2.0.0. This release fixes missing elements from Beta 1

- Bump [Documentation_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v201) (was previously v2.0.0)
- Bump [DCSA_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v201) (was previously v2.0.0)
- Bump [Event_Domain to version 2.0.1](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v201) (was previously v2.0.0)
- Referenced domains above should be consulted to see exact updates. A list of major changes for the API are listed below
  - `receiptTypeAtOrigin`, `deliveryTypeAtDestination`, `cargoMovementTypeAtOrigin`, `cargoMovementTypeAtDestination`, `serviceContractReference`, `termsAndConditions` , `invoicePayableAt`, `transports` (transportPlan) and `shipmentLocations` added to the TransportDocument
  - `volumeUnit` description and enum values updated
  - `shippedOnBoardDate` renamed to `shippedOnboardDate`

<a name="v200B1"></a>[Release v2.0.0 Beta 1 (06 April 2022)](https://app.swaggerhub.com/apis-docs/dcsaorg/DCSA_EBL/2.0.0-Beta-1)
---
Initial release of the DCSA OpenAPI definitions for Bill of Lading. This version of EBL is connected to [Information Model 2022.1](https://dcsa.my.salesforce.com/sfc/p/#2o000000YvHJ/a/7T000000bnvo/id.kB9TVoeYABFV8NwRBQvgVkWXXK7DAuIelpCDw13M)

- Initial Documentation Domain set to [Documentation_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/documentation#v200) (previous release was v1.0.0)
- Initial DCSA Domain set to [DCSA_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/dcsa#v200) (previous release was v1.0.0)
- Initial Event Domain set to [Event_Domain to version 2.0.0](https://github.com/dcsaorg/DCSA-OpenAPI/tree/master/domain/event#v200) (previous release was v1.0.0)
- Referenced domains above should be consulted to see exact updates
