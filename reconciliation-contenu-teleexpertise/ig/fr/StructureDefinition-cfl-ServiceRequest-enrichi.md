# CFL ServiceRequest Enrichi Profile - Confluences Téléexpertise v0.1.0

## Profil de ressource: CFL ServiceRequest Enrichi Profile 

 
Profil décrivant une demande de téléexpertise issu de ServiceRequest R4 enrichie par l'URL pointant vers la bonne offre issu du ROR 

**Utilisations:**

* Ce Profil n'est utilisé par aucun autre profil dans ce guide d'implémentation

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/cfl-ServiceRequest-enrichi)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [CFLServiceRequestRequerantProfile](StructureDefinition-cfl-ServiceRequest-requerant.md) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [CFLServiceRequestRequerantProfile](StructureDefinition-cfl-ServiceRequest-requerant.md) 

** Résumé **

Obligatoire : 2 éléments

**Extensions**

Cette structure fait référence à ces extensions:

* [http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-urlLtle|0.1.0](StructureDefinition-url-ltle.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [CFLServiceRequestRequerantProfile](StructureDefinition-cfl-ServiceRequest-requerant.md) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [CFLServiceRequestRequerantProfile](StructureDefinition-cfl-ServiceRequest-requerant.md) 

** Résumé **

Obligatoire : 2 éléments

**Extensions**

Cette structure fait référence à ces extensions:

* [http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-urlLtle|0.1.0](StructureDefinition-url-ltle.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-cfl-ServiceRequest-enrichi.csv), [Excel](../StructureDefinition-cfl-ServiceRequest-enrichi.xlsx), [Schematron](../StructureDefinition-cfl-ServiceRequest-enrichi.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cfl-ServiceRequest-enrichi",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-ServiceRequest-enrichi",
  "version" : "0.1.0",
  "name" : "CFLServiceRequestEnrichiProfile",
  "title" : "CFL ServiceRequest Enrichi Profile",
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
  "description" : "Profil décrivant une demande de téléexpertise issu de ServiceRequest R4 enrichie par l'URL pointant vers la bonne offre issu du ROR",
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
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-ServiceRequest-requerant|0.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.extension:urlLtle",
      "path" : "ServiceRequest.extension",
      "sliceName" : "urlLtle",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-urlLtle|0.1.0"]
      }]
    }]
  }
}

```
