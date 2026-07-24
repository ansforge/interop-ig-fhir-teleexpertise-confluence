# Contact Patient - Confluences Téléexpertise v0.1.0

## Data Type Profile: Contact Patient 

 
Point de contact du patient 

**Usages:**

* Use this DataType Profile: [FR Core Patient CFL](StructureDefinition-fr-core-patient-cfl.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/StructureDefinition-FRCoreContactPointProfile.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-FRCoreContactPointProfile.csv), [Excel](../StructureDefinition-FRCoreContactPointProfile.xlsx), [Schematron](../StructureDefinition-FRCoreContactPointProfile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRCoreContactPointProfile",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/FRCoreContactPointProfile",
  "version" : "0.1.0",
  "name" : "FRCoreContactPointProfile",
  "title" : "Contact Patient",
  "status" : "draft",
  "date" : "2026-07-24T13:58:57+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Point de contact du patient",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "ContactPoint",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ContactPoint",
      "path" : "ContactPoint"
    }]
  }
}

```
