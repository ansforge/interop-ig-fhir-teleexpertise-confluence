# Redirect Url - Confluences Téléexpertise v0.1.0

## Extension: Redirect Url 

Extension créée pour spécifier l'URL redirection à envoyer en réponse d'un envoie d'une demande

**Context of Use**

**Usage info**

**Utilisations:**

* Utilise ce/t/te Extension: [Cfl Transaction Response](StructureDefinition-cfl-transaction-response-bundle.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/redirect-url)

### Vues formelles du contenu de l'extension

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type url : Extension créée pour spécifier l'URL redirection à envoyer en réponse d'un envoie d'une demande

 **Vue différentielleDifferential View** 

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

 **Vue d'ensemble** 

#### Contraintes

Cette structure est dérivée de [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Résumé **

Extension simple avec le type url : Extension créée pour spécifier l'URL redirection à envoyer en réponse d'un envoie d'une demande

 

Autres représentations du profil : [CSV](../StructureDefinition-redirect-url.csv), [Excel](../StructureDefinition-redirect-url.xlsx), [Schematron](../StructureDefinition-redirect-url.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "redirect-url",
  "url" : "http://example.org/fhir/fish/StructureDefinition/TransactionResponse-RedirectUrl",
  "version" : "0.1.0",
  "name" : "RedirectUrl",
  "title" : "Redirect Url",
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
  "description" : "Extension créée pour spécifier l'URL redirection à envoyer en réponse d'un envoie d'une demande",
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
    "expression" : "Bundle.meta"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Redirect Url",
      "definition" : "Extension créée pour spécifier l'URL redirection à envoyer en réponse d'un envoie d'une demande"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/fish/StructureDefinition/TransactionResponse-RedirectUrl"
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
