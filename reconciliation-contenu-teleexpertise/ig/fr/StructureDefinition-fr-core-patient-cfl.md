# FR Core Patient CFL - Confluences Téléexpertise v0.1.0

## Profil de ressource: FR Core Patient CFL 

 
Profil issu de FRCorePatientINSProfile 

**Utilisations:**

* Référence ce Profil: [CFL ServiceRequest Requerant Profile](StructureDefinition-cfl-ServiceRequest-requerant.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/fr-core-patient-cfl)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCorePatientINSProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-patient-ins.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCorePatientINSProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-patient-ins.html) 

** Résumé **

Obligatoire : 4 éléments(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [Contact Patient (https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/FRCoreContactPointProfile|0.1.0)](StructureDefinition-FRCoreContactPointProfile.md)
* [Adresse du Patient (https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/FRCoreAddressProfile|0.1.0)](StructureDefinition-FRCoreAddressProfile.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [http://example.org/fhir/fish/StructureDefinition/FRCorePatientProfile-multiple-birth|0.1.0](StructureDefinition-patient-multiple-birth.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [FRCorePatientINSProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-patient-ins.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [FRCorePatientINSProfile](https://hl7.fr/ig/fhir/core/2.2.0/StructureDefinition-fr-core-patient-ins.html) 

** Résumé **

Obligatoire : 4 éléments(2 éléments obligatoire(s) imbriqué(s))

**Structures**

Cette structure fait référence à ces autres structures:

* [Contact Patient (https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/FRCoreContactPointProfile|0.1.0)](StructureDefinition-FRCoreContactPointProfile.md)
* [Adresse du Patient (https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/FRCoreAddressProfile|0.1.0)](StructureDefinition-FRCoreAddressProfile.md)

**Extensions**

Cette structure fait référence à ces extensions:

* [http://example.org/fhir/fish/StructureDefinition/FRCorePatientProfile-multiple-birth|0.1.0](StructureDefinition-patient-multiple-birth.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-fr-core-patient-cfl.csv), [Excel](../StructureDefinition-fr-core-patient-cfl.xlsx), [Schematron](../StructureDefinition-fr-core-patient-cfl.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "fr-core-patient-cfl",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/fr-core-patient-cfl",
  "version" : "0.1.0",
  "name" : "FRCorePatientCFL",
  "title" : "FR Core Patient CFL",
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
  "description" : "Profil issu de FRCorePatientINSProfile",
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
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins|2.2.0",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "min" : 2
    },
    {
      "id" : "Patient.extension:multipleBirth",
      "path" : "Patient.extension",
      "sliceName" : "multipleBirth",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/fish/StructureDefinition/FRCorePatientProfile-multiple-birth|0.1.0"]
      }]
    },
    {
      "id" : "Patient.identifier:INS-NIR",
      "path" : "Patient.identifier",
      "sliceName" : "INS-NIR",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name"
    },
    {
      "id" : "Patient.name.use",
      "path" : "Patient.name.use",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/ValueSet/NameUseUsualOrOfficial|0.1.0"
      }
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "min" : 1
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.name:usualName",
      "path" : "Patient.name",
      "sliceName" : "usualName"
    },
    {
      "id" : "Patient.name:usualName.family",
      "path" : "Patient.name.family",
      "min" : 1
    },
    {
      "id" : "Patient.name:usualName.given",
      "path" : "Patient.name.given",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "type" : [{
        "code" : "ContactPoint",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/FRCoreContactPointProfile|0.1.0"]
      }]
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/FRCoreAddressProfile|0.1.0"]
      }]
    }]
  }
}

```
