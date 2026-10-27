# CFL PractitionerRole Profile - Confluences Téléexpertise v0.1.0

## Resource Profile: CFL PractitionerRole Profile 

**Usages:**

* Refer to this Profile: [CFL ServiceRequest Requerant Profile](StructureDefinition-cfl-service-request-requerant.md)
* Examples for this Profile: [PractitionerRole/CFLPractitionerRoleRequerantExample](PractitionerRole-CFLPractitionerRoleRequerantExample.md) and [PractitionerRole/CFLPractitionerRoleRequisExample](PractitionerRole-CFLPractitionerRoleRequisExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/StructureDefinition-cfl-practitioner-role.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cfl-practitioner-role.csv), [Excel](../StructureDefinition-cfl-practitioner-role.xlsx), [Schematron](../StructureDefinition-cfl-practitioner-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cfl-practitioner-role",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitioner-role",
  "version" : "0.1.0",
  "name" : "CFLPractitionerRoleProfile",
  "title" : "CFL PractitionerRole Profile",
  "status" : "draft",
  "date" : "2026-10-27T15:38:31+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil issu de AsPractitionerRoleProfile",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-practitioner-role-to-mos-situation-exercice",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerRoleProfile to MOS - SituationExercice"
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.identifier",
      "path" : "PractitionerRole.identifier",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.identifier:numeroAm",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "numeroAm",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.code:modeExercice",
      "path" : "PractitionerRole.code",
      "sliceName" : "modeExercice",
      "min" : 1
    }]
  }
}

```
