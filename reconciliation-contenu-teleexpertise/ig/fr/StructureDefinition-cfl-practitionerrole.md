# CFL PractitionerRole Profile - Confluences Téléexpertise v0.1.0

## Profil de ressource: CFL PractitionerRole Profile 

 
Profil issu de AsPractitionerRoleProfile 

**Utilisations:**

* Référence ce Profil: [CFL ServiceRequest Requerant Profile](StructureDefinition-cfl-ServiceRequest-requerant.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/cfl-practitionerrole)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerRoleProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerRoleProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html) 

** Résumé **

Obligatoire : 6 éléments

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [AsPractitionerRoleProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [AsPractitionerRoleProfile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html) 

** Résumé **

Obligatoire : 6 éléments

 

Autres représentations du profil : [CSV](../StructureDefinition-cfl-practitionerrole.csv), [Excel](../StructureDefinition-cfl-practitionerrole.xlsx), [Schematron](../StructureDefinition-cfl-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cfl-practitionerrole",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitionerrole",
  "version" : "0.1.0",
  "name" : "CFLPractitionerRoleProfile",
  "title" : "CFL PractitionerRole Profile",
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
  "description" : "Profil issu de AsPractitionerRoleProfile",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "as-practitioner-role-to-mos-situation-exercice",
    "uri" : "https://mos.esante.gouv.fr",
    "name" : "AsPractitionerRoleProfile to MOS - SituationExercice"
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
  "type" : "PractitionerRole",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole|1.1.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.identifier",
      "path" : "PractitionerRole.identifier",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.identifier:numeroAm",
      "path" : "PractitionerRole.identifier",
      "sliceName" : "numeroAm",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.code:modeExercice",
      "path" : "PractitionerRole.code",
      "sliceName" : "modeExercice",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/nos/1.5.0/ValueSet-JDV-J95-ModeExercice-RASS.html"
      }
    }]
  }
}

```
