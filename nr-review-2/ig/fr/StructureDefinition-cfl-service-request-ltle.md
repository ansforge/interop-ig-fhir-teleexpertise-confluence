# CFL ServiceRequest LTLE Profile - Confluences Téléexpertise v0.1.0

## Profil de ressource: CFL ServiceRequest LTLE Profile 

**Utilisations:**

* Exemples pour ce/t/te Profil: [ServiceRequest/CFLServiceRequestLtleExample](ServiceRequest-CFLServiceRequestLtleExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/cfl-service-request-ltle)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [CFLServiceRequestRequerantProfile](StructureDefinition-cfl-service-request-requerant.md) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [CFLServiceRequestRequerantProfile](StructureDefinition-cfl-service-request-requerant.md) 

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [CFLServiceRequestRequerantProfile](StructureDefinition-cfl-service-request-requerant.md) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [CFLServiceRequestRequerantProfile](StructureDefinition-cfl-service-request-requerant.md) 

 

Autres représentations du profil : [CSV](../StructureDefinition-cfl-service-request-ltle.csv), [Excel](../StructureDefinition-cfl-service-request-ltle.xlsx), [Schematron](../StructureDefinition-cfl-service-request-ltle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cfl-service-request-ltle",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-service-request-ltle",
  "version" : "0.1.0",
  "name" : "CFLServiceRequestLtleProfile",
  "title" : "CFL ServiceRequest LTLE Profile",
  "status" : "draft",
  "date" : "2026-10-27T14:48:44+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil décrivant la demande de téléexpertise transmise au logiciel de téléexpertise (LTLE), issue de ServiceRequest R4 et complétée par l'URL pointant vers la bonne offre issue du ROR",
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
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-service-request-requerant|0.1.0",
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
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/url-ltle|0.1.0"]
      }]
    }]
  }
}

```
