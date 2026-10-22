# CFLPractitionnerRoleRequisProfileExample - Confluences Téléexpertise v0.1.0

## Example PractitionerRole: CFLPractitionnerRoleRequisProfileExample

-------

**English**

-------

Profile: [CFL PractitionerRole Profile](StructureDefinition-cfl-practitionerrole.md)

Clark KENT (N° RPPS: 10007209514 (use: official)): Activité de soin et de pharmacie, Salarié at CHU de Bordeaux (https://finess.esante.gouv.fr#330781196 (use: official)) (https://www.ameli.fr#108462037 (use: official))

-------

| | |
| :--- | :--- |
| Active: | true |
| Practitioner: | [Clark KENT (N° RPPS: 10007209514 (use: official))](Practitioner-CFLPractitionnerRequisProfileExample.md) |
| Organization: | [CHU de Bordeaux (https://finess.esante.gouv.fr#330781196 (use: official))](Organization-CFLOrganizationRequisProfileExample.md) |
| Role: | * Activité de soin et de pharmacie
* Salarié
 |
| Specialty: | Pédiatrie (SM) |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "CFLPractitionnerRoleRequisProfileExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitionerrole"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "https://www.ameli.fr",
    "value" : "108462037"
  }],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/CFLPractitionnerRequisProfileExample",
    "type" : "CFLPatientProfile"
  },
  "organization" : {
    "reference" : "Organization/CFLOrganizationRequisProfileExample",
    "type" : "CFLOrganizationeProfile"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://interop.esante.gouv.fr/ig/nos/1.5.0/ValueSet-JDV-J94-GenreActivite-RASS",
      "code" : "GENR01",
      "display" : "Activité de soin et de pharmacie"
    }]
  },
  {
    "coding" : [{
      "system" : "https://interop.esante.gouv.fr/ig/nos/1.5.0/ValueSet-JDV-J95-ModeExercice-RASS",
      "code" : "S",
      "display" : "Salarié"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "https://hl7.fr/ig/fhir/core/2.1.0/ValueSet-fr-core-vs-practitioner-specialty",
      "code" : "SM40",
      "display" : "Pédiatrie (SM)"
    }]
  }]
}

```
