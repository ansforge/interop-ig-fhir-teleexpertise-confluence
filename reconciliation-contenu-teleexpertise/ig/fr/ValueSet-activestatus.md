# ActiveStatus - Confluences Téléexpertise v0.1.0

## ValueSet: (Expérimental) 

 **References** 

* [Split Active Status](StructureDefinition-split-active-status.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "activestatus",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/ValueSet/activestatus",
  "version" : "0.1.0",
  "name" : "ActiveStatus",
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
  "compose" : {
    "include" : [{
      "system" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/CodeSystem/active-status-cs",
      "version" : "0.1.0"
    }]
  }
}

```
