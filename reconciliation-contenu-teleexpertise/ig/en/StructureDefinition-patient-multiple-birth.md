# Patient Multiple Birth - Confluences Téléexpertise v0.1.0

## Extension: Patient Multiple Birth 

Extension créée pour exprimer le rang gémellaire présent dans les attestations de droits à l'assurance maladie.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [FR Core Patient CFL](StructureDefinition-fr-core-patient-cfl.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/StructureDefinition-patient-multiple-birth.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-patient-multiple-birth.csv), [Excel](../StructureDefinition-patient-multiple-birth.xlsx), [Schematron](../StructureDefinition-patient-multiple-birth.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-multiple-birth",
  "url" : "http://example.org/fhir/fish/StructureDefinition/FRCorePatientProfile-multiple-birth",
  "version" : "0.1.0",
  "name" : "PatientMultipleBirth",
  "title" : "Patient Multiple Birth",
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
  "description" : "Extension créée pour exprimer le rang gémellaire présent dans les attestations de droits à l'assurance maladie.",
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
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Patient Multiple Birth",
      "definition" : "Extension créée pour exprimer le rang gémellaire présent dans les attestations de droits à l'assurance maladie."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/fish/StructureDefinition/FRCorePatientProfile-multiple-birth"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
