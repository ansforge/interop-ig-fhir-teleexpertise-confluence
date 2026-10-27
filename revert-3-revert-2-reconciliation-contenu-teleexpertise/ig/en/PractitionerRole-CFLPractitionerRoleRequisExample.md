# CFLPractitionerRoleRequisExample - Confluences Téléexpertise v0.1.0

## Example PractitionerRole: CFLPractitionerRoleRequisExample

-------

**English**

-------

Profile: [CFL PractitionerRole Profile](StructureDefinition-cfl-practitioner-role.md)

Clark KENT (N° RPPS: 10007209514 (use: official)): Activité de soin et de pharmacie, Salarié at CHU de Bordeaux (https://finess.esante.gouv.fr#330781196 (use: official)) (https://www.ameli.fr#108462037 (use: official))

-------

| | |
| :--- | :--- |
| Active: | true |
| Practitioner: | [Clark KENT (N° RPPS: 10007209514 (use: official))](Practitioner-CFLPractitionerRequisExample.md) |
| Organization: | [CHU de Bordeaux (https://finess.esante.gouv.fr#330781196 (use: official))](Organization-CFLOrganizationRequisExample.md) |
| Role: | * Activité de soin et de pharmacie
* Salarié
 |
| Specialty: | Pédiatrie (SM) |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "CFLPractitionerRoleRequisExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitioner-role"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "https://www.ameli.fr",
    "value" : "108462037"
  }],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/CFLPractitionerRequisExample",
    "type" : "CFLPatientProfile"
  },
  "organization" : {
    "reference" : "Organization/CFLOrganizationRequisExample",
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
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice",
      "code" : "S",
      "display" : "Salarié"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
      "code" : "SM40",
      "display" : "Pédiatrie (SM)"
    }]
  }]
}

```
