# Contact Patient - Confluences Téléexpertise v0.1.0

## Profil du type de données: Contact Patient 

 
Point de contact du patient 

**Utilisations:**

* Utilise ce/t/te profil de type de données: [FR Core Patient CFL](StructureDefinition-fr-core-patient-cfl.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/FRCoreContactPointProfile)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreContactPointProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-contact-point.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreContactPointProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-contact-point.html) 

** Résumé **

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FRCoreContactPointProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-contact-point.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreContactPointProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-contact-point.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-FRCoreContactPointProfile.csv), [Excel](../StructureDefinition-FRCoreContactPointProfile.xlsx), [Schematron](../StructureDefinition-FRCoreContactPointProfile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRCoreContactPointProfile",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/FRCoreContactPointProfile",
  "version" : "0.1.0",
  "name" : "FRCoreContactPointProfile",
  "title" : "Contact Patient",
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
  "description" : "Point de contact du patient",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "ContactPoint",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-contact-point|2.2.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ContactPoint",
      "path" : "ContactPoint"
    }]
  }
}

```
