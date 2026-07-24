# Adresse de la Structure - Confluences Téléexpertise v0.1.0

## Data Type Profile: Adresse de la Structure 

 
Adresse de la Structure 

**Usages:**

* Use this DataType Profile: [CFL Organization Profile](StructureDefinition-cfl-Organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/StructureDefinition-AsAddressExtendedProfile.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-AsAddressExtendedProfile.csv), [Excel](../StructureDefinition-AsAddressExtendedProfile.xlsx), [Schematron](../StructureDefinition-AsAddressExtendedProfile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AsAddressExtendedProfile",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/AsAddressExtendedProfile",
  "version" : "0.1.0",
  "name" : "AsAddressExtendedProfile",
  "title" : "Adresse de la Structure",
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
  "description" : "Adresse de la Structure",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-address-extended-to-mos-exercice-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsAddressExtendedProfile to MOS - Adresse"
  },
  {
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
  },
  {
    "identity" : "vcard",
    "uri" : "http://w3.org/vcard",
    "name" : "vCard Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-address-extended|1.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Address",
      "path" : "Address"
    }]
  }
}

```
