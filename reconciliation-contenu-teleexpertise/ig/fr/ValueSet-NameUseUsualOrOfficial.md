# NameUse Usual Or Official - Confluences Téléexpertise v0.1.0

## ValueSet: NameUse Usual Or Official 

 **References** 

* [CFL Patient Profile](StructureDefinition-cfl-patient.md)
* [CFL Practitioner Profile](StructureDefinition-cfl-practitioner.md)

### Définition logique (CLD)

 

### Expansion

-------

 [Description du (des) tableau(x) ci-dessus](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "NameUseUsualOrOfficial",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/ValueSet/NameUseUsualOrOfficial",
  "version" : "0.1.0",
  "name" : "NameUseUsualOrOfficial",
  "title" : "NameUse Usual Or Official",
  "status" : "active",
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
      "system" : "http://hl7.org/fhir/name-use",
      "version" : "4.0.1",
      "concept" : [{
        "code" : "usual"
      },
      {
        "code" : "official"
      }]
    }]
  }
}

```
