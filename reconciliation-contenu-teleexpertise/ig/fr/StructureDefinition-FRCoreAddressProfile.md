# Adresse du Patient - Confluences Téléexpertise v0.1.0

## Profil du type de données: Adresse du Patient 

 
Adresse du patient 

**Utilisations:**

* Utilise ce/t/te profil de type de données: [FR Core Patient CFL](StructureDefinition-fr-core-patient-cfl.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/FRCoreAddressProfile)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreAddressProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-address.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreAddressProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-address.html) 

** Résumé **

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FRCoreAddressProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-address.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCoreAddressProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-address.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-FRCoreAddressProfile.csv), [Excel](../StructureDefinition-FRCoreAddressProfile.xlsx), [Schematron](../StructureDefinition-FRCoreAddressProfile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "FRCoreAddressProfile",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/FRCoreAddressProfile",
  "version" : "0.1.0",
  "name" : "FRCoreAddressProfile",
  "title" : "Adresse du Patient",
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
  "description" : "Adresse du patient",
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
  },
  {
    "identity" : "vcard",
    "uri" : "http://w3.org/vcard",
    "name" : "vCard Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address|2.2.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Address",
      "path" : "Address"
    }]
  }
}

```
