# DCSA defined Domains
Domains are used to specify reusable components used accross APIs.
Domains are stored with the version number as part of the filename as multiple versions of the same Domain can be active in different APIs/Domains at the same time.

Once a Domain is published (on SwaggerHub) in a specific version - **that file never changes**. If changes are required - a new version of the Domain needs to be created.

Chapter 4.1 of the [DCSA API Guidelines](https://dcsa.org/wp-content/uploads/2020/09/20200921-DCSA-API-Design-Principles-1.0.pdf) should be followed when naming the file. SemVer is to be used as part of the fileName:

`{domain file}_vX.Y.Z`

Where `X` is the Major version, `Y` is the Minor version and `Z` is the patch version.

### DCSA
This domain is used to define single components (not objects) used in other Domains or APIs. No objects should be defined here.
The limit and cursor parameter is also defined here as well as pagination headers and API-Version header

### Documentation
This ddomain is used for the electronic documentation APIs (EBL).

### Error
Here the error object used by all APIs is defined.

### Event


### OVS
