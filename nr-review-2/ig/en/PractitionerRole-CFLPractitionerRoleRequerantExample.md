# CFLPractitionerRoleRequerantExample - Confluences Téléexpertise v0.1.0

## Example PractitionerRole: CFLPractitionerRoleRequerantExample

-------

**English**

-------

Profile: [CFL PractitionerRole Profile](StructureDefinition-cfl-practitioner-role.md)

Bruce WAYNE (N° RPPS: 10001389462 (use: official)): Activité de soin et de pharmacie, Titulaire de cabinet, Libéral at Cabinet du Dr Wayne (Identifiant interne: 10001389462001 (use: official)) (https://www.ameli.fr#101319082 (use: official))

-------

| | |
| :--- | :--- |
| Active: | true |
| Practitioner: | [Bruce WAYNE (N° RPPS: 10001389462 (use: official))](Practitioner-CFLPractitionerRequerantExample.md) |
| Organization: | [Cabinet du Dr Wayne (Identifiant interne: 10001389462001 (use: official))](Organization-CFLOrganizationRequerantExample.md) |
| Role: | * Activité de soin et de pharmacie
* Titulaire de cabinet
* Libéral
 |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "CFLPractitionerRoleRequerantExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitioner-role"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "https://www.ameli.fr",
    "value" : "101319082"
  }],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/CFLPractitionerRequerantExample",
    "type" : "CFLPatientProfile"
  },
  "organization" : {
    "reference" : "Organization/CFLOrganizationRequerantExample",
    "type" : "CFLOrganizationeProfile"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite",
      "code" : "GENR01",
      "display" : "Activité de soin et de pharmacie"
    }]
  },
  {
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction",
      "code" : "FON-01",
      "display" : "Titulaire de cabinet"
    }]
  },
  {
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice",
      "code" : "L",
      "display" : "Libéral"
    }]
  }]
}

```
