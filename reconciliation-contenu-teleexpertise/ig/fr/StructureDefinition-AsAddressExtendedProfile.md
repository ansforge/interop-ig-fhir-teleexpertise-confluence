# Adresse de la Structure - Confluences Téléexpertise v0.1.0

## Profil du type de données: Adresse de la Structure 

 
Adresse de la Structure 

**Utilisations:**

* Utilise ce/t/te profil de type de données: [CFL Organization Profile](StructureDefinition-cfl-Organization.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/AsAddressExtendedProfile)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsAddressExtendedProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-address-extended.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsAddressExtendedProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-address-extended.html) 

** Résumé **

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [AsAddressExtendedProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-address-extended.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsAddressExtendedProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-address-extended.html) 

** Résumé **

 

Autres représentations du profil : [CSV](../StructureDefinition-AsAddressExtendedProfile.csv), [Excel](../StructureDefinition-AsAddressExtendedProfile.xlsx), [Schematron](../StructureDefinition-AsAddressExtendedProfile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "AsAddressExtendedProfile",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/AsAddressExtendedProfile",
  "version" : "0.1.0",
  "name" : "AsAddressExtendedProfile",
  "title" : "Adresse de la Structure",
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
  "description" : "Adresse de la Structure",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-address-extended-to-mos-exercice-professionnel",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsAddressExtendedProfile to MOS - Adresse"
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
    "identity" : "vcard",
    "uri" : "http://w3.org/vcard",
    "name" : "vCard Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-address-extended|1.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Address",
      "path" : "Address"
    }]
  }
}

```
