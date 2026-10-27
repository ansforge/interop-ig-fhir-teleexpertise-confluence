# CFL Organization Profile - Confluences Téléexpertise v0.1.0

## Resource Profile: CFL Organization Profile 

**Usages:**

* Examples for this Profile: [Cabinet du dr Wayne](Organization-CFLOrganizationRequerantExample.md) and [CHU de Bordeaux](Organization-CFLOrganizationRequisExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/StructureDefinition-cfl-organization.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cfl-organization.csv), [Excel](../StructureDefinition-cfl-organization.xlsx), [Schematron](../StructureDefinition-cfl-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cfl-organization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-organization",
  "version" : "0.1.0",
  "name" : "CFLOrganizationProfile",
  "title" : "CFL Organization Profile",
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
  "description" : "Profil issu de AsOrganizationProfile",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-organization-to-mos-ej",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsOrganization to MOS - EJ"
  },
  {
    "identity" : "as-organization-to-mos-eg",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsOrganization to MOS - EG"
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
  "type" : "Organization",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization|1.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:siren",
      "path" : "Organization.identifier",
      "sliceName" : "siren",
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:siret",
      "path" : "Organization.identifier",
      "sliceName" : "siret",
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:finess",
      "path" : "Organization.identifier",
      "sliceName" : "finess",
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:finess.type.coding.code",
      "path" : "Organization.identifier.type.coding.code",
      "patternCode" : "FINEG"
    },
    {
      "id" : "Organization.identifier:adeliRang",
      "path" : "Organization.identifier",
      "sliceName" : "adeliRang",
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:rppsRang",
      "path" : "Organization.identifier",
      "sliceName" : "rppsRang",
      "max" : "1"
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "min" : 1,
      "max" : "1"
    }]
  }
}

```
