### Track & Trace (T&T)

The DCSA Interface Standard for Track and Trace is documented on the [**DCSA TNT**](https://app.swaggerhub.com/apis/dcsaorg/DCSA_TNT) SwaggerHub.

The purpose of an Event Hub is to send events and manage subscriptions. Track & Trace is a specialised Hub managing:
- `TransportEvents` - events regarding transportation (Arival and Departure)
- `EquipmentEvents` - events regarding Equipment (Loading, Discharging, Gated in, Gate out, Stuffing, Stripping)
- `ShipmentEvents` - events regarding documentation (Booking, Bill of Lading, Arrival Notice, Shipment Release Message)

It is only possible to **receive** and **subscribe** to events mentioned above when implementing Track & Trace.

Publication related to this specification:
-	[DCSA Information Model 2.0](https://dcsa.org/wp-content/uploads/2020/07/DCSA-Information-model-2.0-vF.pdf)
-	[DCSA Information Model Reading Guide]( https://dcsa.org/wp-content/uploads/2020/07/DCSA-Information-Model-2.0-Reading-Guide-vF.pdf)
-	[DCSA Interface for Track and Trace 1.2]( https://dcsa.org/wp-content/uploads/2020/05/DCSA-Interface-Standard-for-Track-and-Trace-1.2.pdf)
-	[DCSA Interface for Track and Trace 1.2 Reading Guide]( https://dcsa.org/wp-content/uploads/2020/05/DCSA-Interface-Standard-for-Track-and-Trace-Reading-Guide-1.2.pdf)
-	[Glossary of Terms](https://knowledge.dcsa.org/s/glossary)
