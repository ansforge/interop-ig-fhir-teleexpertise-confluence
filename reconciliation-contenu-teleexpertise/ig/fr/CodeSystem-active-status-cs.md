# ActiveStatusCS - Confluences Téléexpertise v0.1.0

## CodeSystem: ActiveStatusCS (Expérimental) 

Ce système de codes est référencé dans la définition des ensembles de valeurs suivants :

* [ActiveStatus](ValueSet-activestatus.md)

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "active-status-cs",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/CodeSystem/active-status-cs",
  "version" : "0.1.0",
  "name" : "ActiveStatusCS",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-07-24T15:30:35+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "in_progress",
    "display" : "in progress"
  },
  {
    "code" : "ready",
    "display" : "ready"
  }]
}

```
