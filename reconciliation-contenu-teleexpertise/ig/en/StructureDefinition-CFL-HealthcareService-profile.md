# CFL HealthcareService Profile - Confluences Téléexpertise v0.1.0

## Resource Profile: CFL HealthcareService Profile 

 
Profil issu de RORHealthcareService 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/StructureDefinition-CFL-HealthcareService-profile.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-CFL-HealthcareService-profile.csv), [Excel](../StructureDefinition-CFL-HealthcareService-profile.xlsx), [Schematron](../StructureDefinition-CFL-HealthcareService-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CFL-HealthcareService-profile",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/CFL-HealthcareService-profile",
  "version" : "0.1.0",
  "name" : "CFLHealthcareServiceProfile",
  "title" : "CFL HealthcareService Profile",
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
  "description" : "Profil issu de RORHealthcareService",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "specmetier-to-RORHealthcareService",
    "uri" : "https://esante.gouv.fr/sites/default/files/media/document/ROR_ME_V3.0.1_ModeleExposition_VFD_20260316.pdf",
    "name" : "HealthcareService du Modèle exposition ROR V3"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice|0.7.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HealthcareService",
      "path" : "HealthcareService"
    },
    {
      "id" : "HealthcareService.specialty:operationalActivity",
      "path" : "HealthcareService.specialty",
      "sliceName" : "operationalActivity",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/JDV-J17-ActiviteOperationnelle-ROR"
      }
    },
    {
      "id" : "HealthcareService.characteristic:careMode",
      "path" : "HealthcareService.characteristic",
      "sliceName" : "careMode",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://smt.esante.gouv.fr/fhir/ValueSet/JDV-J19-ModePriseEnCharge-ROR"
      }
    }]
  }
}

```
