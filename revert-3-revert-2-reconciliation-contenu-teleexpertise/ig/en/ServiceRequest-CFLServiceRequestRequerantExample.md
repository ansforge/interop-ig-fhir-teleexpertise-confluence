# CFLServiceRequestRequerantExample - Confluences Téléexpertise v0.1.0

## Example ServiceRequest: CFLServiceRequestRequerantExample

-------

**English**

-------

Profile: [CFL ServiceRequest Requerant Profile](StructureDefinition-cfl-ServiceRequest-requerant.md)

**Patient Consent**: true

**identifier**: 8ac3a9f7-0416-4801-88e0-8db454b4fc80

**status**: Draft

**intent**: Proposal

**subject**: [Pierre DURAND (official) Male, DoB: 1974-12-25 ( NIR définitif: 123456789012244 (use: official))](Patient-CFLPatientProfileExample.md)

**authoredOn**: 2026-09-29

**requester**: [Bruce WAYNE (N° RPPS: 10001389462 (use: official)): Activité de soin et de pharmacie, Titulaire de cabinet, Libéral at Cabinet du dr Wayne (Identifiant interne: 10001389462001 (use: official)) (https://www.ameli.fr#101319082 (use: official))](PractitionerRole-CFLPractitionnerRoleRequerantProfileExample.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "CFLServiceRequestRequerantExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-ServiceRequest-requerant"]
  },
  "extension" : [{
    "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/patient-consent",
    "valueBoolean" : true
  }],
  "identifier" : [{
    "value" : "8ac3a9f7-0416-4801-88e0-8db454b4fc80"
  }],
  "status" : "draft",
  "intent" : "proposal",
  "subject" : {
    "reference" : "Patient/CFLPatientProfileExample",
    "type" : "CFLPatientProfile"
  },
  "authoredOn" : "2026-09-29",
  "requester" : {
    "reference" : "PractitionerRole/CFLPractitionnerRoleRequerantProfileExample",
    "type" : "CFLPractitionnerRoleProfile"
  }
}

```
