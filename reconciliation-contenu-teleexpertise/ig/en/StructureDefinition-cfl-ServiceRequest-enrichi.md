# CFL ServiceRequest Enrichi Profile - Confluences Téléexpertise v0.1.0

## Resource Profile: CFL ServiceRequest Enrichi Profile 

 
Profil décrivant une demande de téléexpertise issu de ServiceRequest R4 enrichie par l'URL pointant vers la bonne offre issu du ROR 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/StructureDefinition-cfl-ServiceRequest-enrichi.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cfl-ServiceRequest-enrichi.csv), [Excel](../StructureDefinition-cfl-ServiceRequest-enrichi.xlsx), [Schematron](../StructureDefinition-cfl-ServiceRequest-enrichi.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cfl-ServiceRequest-enrichi",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-ServiceRequest-enrichi",
  "version" : "0.1.0",
  "name" : "CFLServiceRequestEnrichiProfile",
  "title" : "CFL ServiceRequest Enrichi Profile",
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
  "description" : "Profil décrivant une demande de téléexpertise issu de ServiceRequest R4 enrichie par l'URL pointant vers la bonne offre issu du ROR",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-ServiceRequest-requerant|0.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.extension:urlLtle",
      "path" : "ServiceRequest.extension",
      "sliceName" : "urlLtle",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-urlLtle|0.1.0"]
      }]
    }]
  }
}

```
