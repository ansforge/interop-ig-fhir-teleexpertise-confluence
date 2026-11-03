# CFLPractitionerRequerantExample - Confluences Téléexpertise v0.1.0

## Exemple Practitioner: CFLPractitionerRequerantExample

-------

**French**

-------

Profil: [CFL Practitioner Profile](StructureDefinition-cfl-practitioner.md)

Bruce WAYNE (N° RPPS: 10001389462 (use: official))

-------

| | |
| :--- | :--- |
| Actif : | true |
| Coordonnées | [bruce.wayne@chsf.mssante.fr](mailto:bruce.wayne@chsf.mssante.fr) |
| Qualification: | Spécialité ordinale |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "CFLPractitionerRequerantExample",
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
    "value" : "10001389462"
  }],
  "active" : true,
  "name" : [{
    "text" : "Bruce WAYNE",
    "family" : "WAYNE",
    "given" : ["Bruce"]
  }],
  "telecom" : [{
    "extension" : [{
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point-email-type"
    }],
    "system" : "email",
    "value" : "bruce.wayne@chsf.mssante.fr"
  }],
  "qualification" : [{
    "code" : {
      "coding" : [{
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire",
        "code" : "S"
      },
      {
        "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
        "code" : "SM26"
      }]
    }
  }]
}

```
