# CFLPractitionnerRequisProfileExample - Confluences Téléexpertise v0.1.0

## Example Practitioner: CFLPractitionnerRequisProfileExample

-------

**English**

-------

Profile: [CFL Practitioner Profile](StructureDefinition-cfl-practitioner.md)

Clark KENT (N° RPPS: 10007209514 (use: official))

-------

| | |
| :--- | :--- |
| Active: | true |
| Contact Detail | [klark.kent@chubordeaux.mssante.fr](mailto:klark.kent@chubordeaux.mssante.fr) |
| Qualification: | S |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "CFLPractitionnerRequisProfileExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitioner"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "code" : "RPPS"
      }]
    },
    "system" : "https://rpps.esante.gouv.fr",
    "value" : "10007209514"
  }],
  "active" : true,
  "name" : [{
    "text" : "Clark KENT",
    "family" : "KENT",
    "given" : ["Clark"]
  }],
  "telecom" : [{
    "extension" : [{
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type"
    }],
    "system" : "email",
    "value" : "klark.kent@chubordeaux.mssante.fr"
  }],
  "qualification" : [{
    "code" : {
      "coding" : [{
        "code" : "S"
      },
      {
        "code" : "SM40"
      }]
    }
  }]
}

```
