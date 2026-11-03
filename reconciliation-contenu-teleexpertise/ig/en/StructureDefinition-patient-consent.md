# Patient Consent - Confluences Téléexpertise v0.1.0

## Extension: Patient Consent 

Extension créée pour spécifier le consentement du patient

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [CFL ServiceRequest Requerant Profile](StructureDefinition-cfl-ServiceRequest-requerant.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/StructureDefinition-patient-consent.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-patient-consent.csv), [Excel](../StructureDefinition-patient-consent.xlsx), [Schematron](../StructureDefinition-patient-consent.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-consent",
  "url" : "http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-patientConsent",
  "version" : "0.1.0",
  "name" : "PatientConsent",
  "title" : "Patient Consent",
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
  "description" : "Extension créée pour spécifier le consentement du patient ",
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
      "short" : "Patient Consent",
      "definition" : "Extension créée pour spécifier le consentement du patient "
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-patientConsent"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
