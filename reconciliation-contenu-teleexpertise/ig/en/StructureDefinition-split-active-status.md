# Split Active Status - Confluences Téléexpertise v0.1.0

## Extension: Split Active Status 

Extension créée pour spécifier l'état d'une demande active. Soit demande publiée (ready), pas encore prise en charge par un expert. Soit demande en cours (in progress), demande prise en charge par un expert. Cette extension s'inspire de l'élément ServiceRequest.statusReason R6: https://build.fhir.org/servicerequest-definitions.html#ServiceRequest.statusReason.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [CFL ServiceRequest Requerant Profile](StructureDefinition-cfl-ServiceRequest-requerant.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/StructureDefinition-split-active-status.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-split-active-status.csv), [Excel](../StructureDefinition-split-active-status.xlsx), [Schematron](../StructureDefinition-split-active-status.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "split-active-status",
  "url" : "http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-SplitActiveStatus",
  "version" : "0.1.0",
  "name" : "SplitActiveStatus",
  "title" : "Split Active Status",
  "status" : "draft",
  "date" : "2026-07-24T15:30:35+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Extension créée pour spécifier l'état d'une demande active. Soit demande publiée (ready), pas encore prise en charge par un expert. Soit demande en cours (in progress), demande prise en charge par un expert. Cette extension s'inspire de l'élément ServiceRequest.statusReason R6: https://build.fhir.org/servicerequest-definitions.html#ServiceRequest.statusReason.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "ServiceRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Split Active Status",
      "definition" : "Extension créée pour spécifier l'état d'une demande active. Soit demande publiée (ready), pas encore prise en charge par un expert. Soit demande en cours (in progress), demande prise en charge par un expert. Cette extension s'inspire de l'élément ServiceRequest.statusReason R6: https://build.fhir.org/servicerequest-definitions.html#ServiceRequest.statusReason."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-SplitActiveStatus"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "Extension.value[x].code",
      "path" : "Extension.value[x].code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/ValueSet/activestatus|0.1.0"
      }
    }]
  }
}

```
