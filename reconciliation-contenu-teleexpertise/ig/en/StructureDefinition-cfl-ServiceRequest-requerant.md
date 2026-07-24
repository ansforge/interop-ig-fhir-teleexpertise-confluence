# CFL ServiceRequest Requerant Profile - Confluences Téléexpertise v0.1.0

## Resource Profile: CFL ServiceRequest Requerant Profile 

 
Profil décrivant une demande de téléexpertise issu de ServiceRequest R4 

**Usages:**

* Derived from this Profile: [CFL ServiceRequest Enrichi Profile](StructureDefinition-cfl-ServiceRequest-enrichi.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/StructureDefinition-cfl-ServiceRequest-requerant.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cfl-ServiceRequest-requerant.csv), [Excel](../StructureDefinition-cfl-ServiceRequest-requerant.xlsx), [Schematron](../StructureDefinition-cfl-ServiceRequest-requerant.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cfl-ServiceRequest-requerant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-ServiceRequest-requerant",
  "version" : "0.1.0",
  "name" : "CFLServiceRequestRequerantProfile",
  "title" : "CFL ServiceRequest Requerant Profile",
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
  "description" : "Profil décrivant une demande de téléexpertise issu de ServiceRequest R4",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.extension:SplitActiveStatus",
      "path" : "ServiceRequest.extension",
      "sliceName" : "SplitActiveStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-SplitActiveStatus|0.1.0"]
      }]
    },
    {
      "id" : "ServiceRequest.extension:PatientConsent",
      "path" : "ServiceRequest.extension",
      "sliceName" : "PatientConsent",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-patientConsent|0.1.0"]
      }]
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "patternCode" : "proposal"
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-patient|0.1.0"]
      }]
    },
    {
      "id" : "ServiceRequest.authoredOn",
      "path" : "ServiceRequest.authoredOn",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitionerrole|0.1.0"]
      }]
    },
    {
      "id" : "ServiceRequest.performer",
      "path" : "ServiceRequest.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitionerrole|0.1.0"]
      }]
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice|0.7.0"]
      }]
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.patientInstruction",
      "path" : "ServiceRequest.patientInstruction",
      "max" : "0"
    }]
  }
}

```
