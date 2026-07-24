# CFL Patient Profile - Confluences Téléexpertise v0.1.0

## Resource Profile: CFL Patient Profile 

 
Profil issu de FRCorePatientINSProfile 

**Usages:**

* Refer to this Profile: [CFL ServiceRequest Requerant Profile](StructureDefinition-cfl-ServiceRequest-requerant.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/StructureDefinition-cfl-patient.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cfl-patient.csv), [Excel](../StructureDefinition-cfl-patient.xlsx), [Schematron](../StructureDefinition-cfl-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cfl-patient",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-patient",
  "version" : "0.1.0",
  "name" : "CFLPatientProfile",
  "title" : "CFL Patient Profile",
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
  "description" : "Profil issu de FRCorePatientINSProfile",
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
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "min" : 2
    },
    {
      "id" : "Patient.extension:multipleBirth",
      "path" : "Patient.extension",
      "sliceName" : "multipleBirth",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/fish/StructureDefinition/FRCorePatientProfile-multiple-birth|0.1.0"]
      }]
    },
    {
      "id" : "Patient.identifier:INS-NIR",
      "path" : "Patient.identifier",
      "sliceName" : "INS-NIR",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name"
    },
    {
      "id" : "Patient.name.use",
      "path" : "Patient.name.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/ValueSet/NameUseUsualOrOfficial|0.1.0"
      }
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "min" : 1
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.name:usualName",
      "path" : "Patient.name",
      "sliceName" : "usualName"
    },
    {
      "id" : "Patient.name:usualName.family",
      "path" : "Patient.name.family",
      "min" : 1
    },
    {
      "id" : "Patient.name:usualName.given",
      "path" : "Patient.name.given",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0"]
      }]
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address|2.2.0"]
      }]
    }]
  }
}

```
