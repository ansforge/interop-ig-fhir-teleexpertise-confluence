# CFL ServiceRequest Requerant Profile - Confluences Téléexpertise v0.1.0

## Profil de ressource: CFL ServiceRequest Requerant Profile 

 
Profil décrivant une demande de téléexpertise issu de ServiceRequest R4 

**Utilisations:**

* Dérivé de ce Profil: [CFL ServiceRequest Enrichi Profile](StructureDefinition-cfl-ServiceRequest-enrichi.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.teleexpertise-confluence|current/StructureDefinition/cfl-ServiceRequest-requerant)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau des éléments clés](#tabs-key) 
*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Résumé **

Obligatoire : 2 éléments
 Interdit : 3 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [CFL Patient Profile (https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-patient|0.1.0)](StructureDefinition-cfl-patient.md)
* [CFL PractitionerRole Profile (https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitionerrole|0.1.0)](StructureDefinition-cfl-practitionerrole.md)
* [RORHealthcareService (https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice|0.7.0)](https://interop.esante.gouv.fr/ig/fhir/ror/0.7.0/StructureDefinition-ror-healthcareservice.html)

**Extensions**

Cette structure fait référence à ces extensions:

* [http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-SplitActiveStatus|0.1.0](StructureDefinition-split-active-status.md)
* [http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-patientConsent|0.1.0](StructureDefinition-patient-consent.md)

 **Vue des éléments clés** 

#### Bindings terminologiques

#### Contraintes

 **Vue différentielle** 

Cette structure est dérivée de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

#### Contraintes

Cette structure est dérivée de [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html) 

** Résumé **

Obligatoire : 2 éléments
 Interdit : 3 éléments

**Structures**

Cette structure fait référence à ces autres structures:

* [CFL Patient Profile (https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-patient|0.1.0)](StructureDefinition-cfl-patient.md)
* [CFL PractitionerRole Profile (https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitionerrole|0.1.0)](StructureDefinition-cfl-practitionerrole.md)
* [RORHealthcareService (https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice|0.7.0)](https://interop.esante.gouv.fr/ig/fhir/ror/0.7.0/StructureDefinition-ror-healthcareservice.html)

**Extensions**

Cette structure fait référence à ces extensions:

* [http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-SplitActiveStatus|0.1.0](StructureDefinition-split-active-status.md)
* [http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-patientConsent|0.1.0](StructureDefinition-patient-consent.md)

 

Autres représentations du profil : [CSV](../StructureDefinition-cfl-ServiceRequest-requerant.csv), [Excel](../StructureDefinition-cfl-ServiceRequest-requerant.xlsx), [Schematron](../StructureDefinition-cfl-ServiceRequest-requerant.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cfl-ServiceRequest-requerant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-ServiceRequest-requerant",
  "version" : "0.1.0",
  "name" : "CFLServiceRequestRequerantProfile",
  "title" : "CFL ServiceRequest Requerant Profile",
  "status" : "draft",
  "date" : "2026-07-24T15:30:35+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil décrivant une demande de téléexpertise issu de ServiceRequest R4",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest|4.0.1",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.extension:SplitActiveStatus",
      "path" : "ServiceRequest.extension",
      "sliceName" : "SplitActiveStatus",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-SplitActiveStatus|0.1.0"]
      }]
    },
    {
      "id" : "ServiceRequest.extension:PatientConsent",
      "path" : "ServiceRequest.extension",
      "sliceName" : "PatientConsent",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-patientConsent|0.1.0"]
      }]
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "patternCode" : "proposal"
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-patient|0.1.0"]
      }]
    },
    {
      "id" : "ServiceRequest.authoredOn",
      "path" : "ServiceRequest.authoredOn",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitionerrole|0.1.0"]
      }]
    },
    {
      "id" : "ServiceRequest.performer",
      "path" : "ServiceRequest.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-practitionerrole|0.1.0"]
      }]
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice|0.7.0"]
      }]
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "max" : "0"
    },
    {
      "id" : "ServiceRequest.patientInstruction",
      "path" : "ServiceRequest.patientInstruction",
      "max" : "0"
    }]
  }
}

```
