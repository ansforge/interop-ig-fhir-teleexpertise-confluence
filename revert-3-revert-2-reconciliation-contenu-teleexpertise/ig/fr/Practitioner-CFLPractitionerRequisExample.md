# CFLPractitionerRequisExample - Confluences Téléexpertise v0.1.0

## Exemple Practitioner: CFLPractitionerRequisExample

-------

**French**

-------

Profil: [CFL Practitioner Profile](StructureDefinition-cfl-practitioner.md)

Clark KENT (N° RPPS: 10007209514 (use: official))

-------

| | |
| :--- | :--- |
| Actif : | true |
| Coordonnées | [klark.kent@chubordeaux.mssante.fr](mailto:klark.kent@chubordeaux.mssante.fr) |
| Qualification: | Spécialité ordinale |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "CFLPractitionerRequisExample",
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
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
        "code" : "S"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
        "code" : "SM40"
      }]
    }
  }]
}

```
