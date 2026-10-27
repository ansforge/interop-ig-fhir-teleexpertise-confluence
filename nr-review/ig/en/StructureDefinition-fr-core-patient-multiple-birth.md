# Multiple Birth - Rang gémellaire - Confluences Téléexpertise v0.1.0

## Extension: Multiple Birth - Rang gémellaire 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [CFL Patient Profile](StructureDefinition-cfl-patient.md)
* Examples for this Extension: [Bundle/CFLBundleTransactionExample](Bundle-CFLBundleTransactionExample.md) and [Patient/CFLPatientExample](Patient-CFLPatientExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/StructureDefinition-fr-core-patient-multiple-birth.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-fr-core-patient-multiple-birth.csv), [Excel](../StructureDefinition-fr-core-patient-multiple-birth.xlsx), [Schematron](../StructureDefinition-fr-core-patient-multiple-birth.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-patient-multiple-birth",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/fr-core-patient-multiple-birth",
  "version" : "0.1.0",
  "name" : "FRCorePatientMultipleBirthExtension",
  "title" : "Multiple Birth - Rang gémellaire",
  "status" : "draft",
  "date" : "2026-10-27T13:32:56+00:00",
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
      "short" : "Multiple Birth - Rang gémellaire",
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
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/fr-core-patient-multiple-birth"
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
