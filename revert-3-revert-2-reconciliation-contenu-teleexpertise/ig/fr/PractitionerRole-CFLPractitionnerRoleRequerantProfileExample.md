# CFLPractitionnerRoleRequerantProfileExample - Confluences Téléexpertise v0.1.0

## Exemple PractitionerRole: CFLPractitionnerRoleRequerantProfileExample

-------

**French**

-------

Profil: [CFL PractitionerRole Profile](StructureDefinition-cfl-practitionerrole.md)

Bruce WAYNE (N° RPPS: 10001389462 (use: official)): Activité de soin et de pharmacie, Titulaire de cabinet, Libéral at Cabinet du dr Wayne (Identifiant interne: 10001389462001 (use: official)) (https://www.ameli.fr#101319082 (use: official))

-------

| | |
| :--- | :--- |
| Actif : | true |
| Practitioner: | [Bruce WAYNE (N° RPPS: 10001389462 (use: official))](Practitioner-CFLPractitionnerRequerantProfileExample.md) |
| Organization: | [Cabinet du dr Wayne (Identifiant interne: 10001389462001 (use: official))](Organization-CFLOrganizationRequerantProfileExample.md) |
| Role: | * Activité de soin et de pharmacie
* Titulaire de cabinet
* Libéral
 |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "CFLPractitionnerRoleRequerantProfileExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitionerrole"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "https://www.ameli.fr",
    "value" : "101319082"
  }],
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/CFLPractitionnerRequerantProfileExample",
    "type" : "CFLPatientProfile"
  },
  "organization" : {
    "reference" : "Organization/CFLOrganizationRequerantProfileExample",
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
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction/TRE_R21-Fonction-FHIR",
      "code" : "FON-01",
      "display" : "Titulaire de cabinet"
    }]
  },
  {
    "coding" : [{
      "system" : "https://interop.esante.gouv.fr/ig/nos/1.5.0/ValueSet-JDV-J95-ModeExercice-RASS",
      "code" : "L",
      "display" : "Libéral"
    }]
  }]
}

```
