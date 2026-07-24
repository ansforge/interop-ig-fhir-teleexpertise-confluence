# CFL Organization Profile - Confluences Téléexpertise v0.1.0

## Profil de ressource: CFL Organization Profile 

 
Profil issu de AsOrganizationProfile 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/cfl-Organization)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsOrganizationProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-organization.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsOrganizationProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-organization.html) 

** Résumé **

Obligatoire : 3 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [Adresse de la Structure (https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/AsAddressExtendedProfile|0.1.0)](StructureDefinition-AsAddressExtendedProfile.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [AsOrganizationProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-organization.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsOrganizationProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-organization.html) 

** Résumé **

Obligatoire : 3 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [Adresse de la Structure (https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/AsAddressExtendedProfile|0.1.0)](StructureDefinition-AsAddressExtendedProfile.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-cfl-Organization.csv), [Excel](../StructureDefinition-cfl-Organization.xlsx), [Schematron](../StructureDefinition-cfl-Organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cfl-Organization",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-Organization",
  "version" : "0.1.0",
  "name" : "CFLOrganizationProfile",
  "title" : "CFL Organization Profile",
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
      "min" : 1
    },
    {
      "id" : "Organization.identifier:finess",
      "path" : "Organization.identifier",
      "sliceName" : "finess",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:finess.type.coding.code",
      "path" : "Organization.identifier.type.coding.code",
      "patternCode" : "FINEG"
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/AsAddressExtendedProfile|0.1.0"]
      }]
    }]
  }
}

```
