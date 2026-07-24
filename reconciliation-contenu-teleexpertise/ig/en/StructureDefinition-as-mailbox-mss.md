# Mailbox MSS - Confluences Téléexpertise v0.1.0

## Data Type Profile: Mailbox MSS 

 
Boîte aux lettres MSS d’un professionnel 

**Usages:**

* This DataType Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/StructureDefinition-as-mailbox-mss.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-as-mailbox-mss.csv), [Excel](../StructureDefinition-as-mailbox-mss.xlsx), [Schematron](../StructureDefinition-as-mailbox-mss.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "as-mailbox-mss",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/as-mailbox-mss",
  "version" : "0.1.0",
  "name" : "AsMailboxMSSProfile",
  "title" : "Mailbox MSS",
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
  "description" : "Boîte aux lettres MSS d’un professionnel",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ContactPoint|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ContactPoint",
      "path" : "ContactPoint"
    },
    {
      "id" : "ContactPoint.system",
      "path" : "ContactPoint.system",
      "fixedCode" : "email"
    },
    {
      "id" : "ContactPoint.value",
      "path" : "ContactPoint.value",
      "min" : 1
    },
    {
      "id" : "ContactPoint.use",
      "path" : "ContactPoint.use",
      "patternCode" : "work"
    }]
  }
}

```
