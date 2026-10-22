# CFLServiceRequestEnrichiExample - Confluences Téléexpertise v0.1.0

## Example ServiceRequest: CFLServiceRequestEnrichiExample

-------

**English**

-------

Profile: [CFL ServiceRequest Enrichi Profile](StructureDefinition-cfl-ServiceRequest-enrichi.md)

**Url Ltle**: [https://Logiciel_LTLE.fr/offre_pediatrique_Bordeaux](https://simplifier.net/resolve?scope=ans.fhir.fr.ror@0.7.0&canonical=https://Logiciel_LTLE.fr/offre_pediatrique_Bordeaux)

**Patient Consent**: true

**identifier**: 8ac3a9f7-0416-4801-88e0-8db454b4fc80

**status**: Draft

**intent**: Proposal

**subject**: [Pierre DURAND (official) Male, DoB: 1974-12-25 ( NIR définitif: 123456789012244 (use: official))](Patient-CFLPatientProfileExample.md)

**authoredOn**: 2026-09-29

**requester**: [Bruce WAYNE (N° RPPS: 10001389462 (use: official)): Activité de soin et de pharmacie, Titulaire de cabinet, Libéral at Cabinet du dr Wayne (Identifiant interne: 10001389462001 (use: official)) (https://www.ameli.fr#101319082 (use: official))](PractitionerRole-CFLPractitionnerRoleRequerantProfileExample.md)

**performer**: [Clark KENT (N° RPPS: 10007209514 (use: official)): Activité de soin et de pharmacie, Salarié at CHU de Bordeaux (https://finess.esante.gouv.fr#330781196 (use: official)) (https://www.ameli.fr#108462037 (use: official))](PractitionerRole-CFLPractitionnerRoleRequisProfileExample.md)

**supportingInfo**: [Service pédiatrique du Chu de Poitiers (Médecine, Chirurgie, Obstétrique (MCO)) by CHU de Bordeaux (https://finess.esante.gouv.fr#330781196 (use: official)) (75/2874)](HealthcareService-CFLHealthcareServiceProfileExample.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "CFLServiceRequestEnrichiExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-ServiceRequest-enrichi"]
  },
  "extension" : [{
    "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/url-ltle",
    "valueUrl" : "https://Logiciel_LTLE.fr/offre_pediatrique_Bordeaux"
  },
  {
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
  },
  "performer" : [{
    "reference" : "PractitionerRole/CFLPractitionnerRoleRequisProfileExample",
    "type" : "CFLPractitionnerRoleProfile"
  }],
  "supportingInfo" : [{
    "reference" : "HealthcareService/CFLHealthcareServiceProfileExample",
    "type" : "CFLHealthcareServiceProfile"
  }]
}

```
