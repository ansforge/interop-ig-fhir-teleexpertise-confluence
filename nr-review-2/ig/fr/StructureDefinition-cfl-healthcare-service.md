# CFL HealthcareService Profile - Confluences Téléexpertise v0.1.0

## Profil de ressource: CFL HealthcareService Profile 

**Utilisations:**

* Exemples pour ce/t/te Profil: [Service pédiatrique du CHU de Poitiers](HealthcareService-CFLHealthcareServiceExample.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/cfl-healthcare-service)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [RORHealthcareService](https://interop.esante.gouv.fr/ig/fhir/ror/0.7.0/StructureDefinition-ror-healthcareservice.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [RORHealthcareService](https://interop.esante.gouv.fr/ig/fhir/ror/0.7.0/StructureDefinition-ror-healthcareservice.html) 

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [RORHealthcareService](https://interop.esante.gouv.fr/ig/fhir/ror/0.7.0/StructureDefinition-ror-healthcareservice.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [RORHealthcareService](https://interop.esante.gouv.fr/ig/fhir/ror/0.7.0/StructureDefinition-ror-healthcareservice.html) 

 

Autres représentations du profil : [CSV](../StructureDefinition-cfl-healthcare-service.csv), [Excel](../StructureDefinition-cfl-healthcare-service.xlsx), [Schematron](../StructureDefinition-cfl-healthcare-service.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cfl-healthcare-service",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-healthcare-service",
  "version" : "0.1.0",
  "name" : "CFLHealthcareServiceProfile",
  "title" : "CFL HealthcareService Profile",
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
    }]
  }
}

```
