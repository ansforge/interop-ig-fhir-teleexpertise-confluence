# Url Ltle - Confluences Téléexpertise v0.1.0

## Extension: Url Ltle 

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [CFL ServiceRequest LTLE Profile](StructureDefinition-cfl-service-request-ltle.md)
* Exemples pour ce/t/te Extension: [ServiceRequest/CFLServiceRequestLtleExample](ServiceRequest-CFLServiceRequestLtleExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/url-ltle)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue différentielle** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 

Autres représentations du profil : [CSV](../StructureDefinition-url-ltle.csv), [Excel](../StructureDefinition-url-ltle.xlsx), [Schematron](../StructureDefinition-url-ltle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "url-ltle",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/url-ltle",
  "version" : "0.1.0",
  "name" : "ServiceRequestUrlLtleExtension",
  "title" : "Url Ltle",
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
  "description" : "Extension créée pour spécifier l'URL pointant la demande de téléexpertise vers la bonne offre de TLE d'un logiciel de téléexpertise",
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
      "short" : "Url Ltle",
      "definition" : "Extension créée pour spécifier l'URL pointant la demande de téléexpertise vers la bonne offre de TLE d'un logiciel de téléexpertise"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/url-ltle"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "url"
      }]
    }]
  }
}

```
