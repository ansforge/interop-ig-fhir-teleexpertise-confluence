# CFLHealthcareServiceExample - Confluences Téléexpertise v0.1.0

## Example HealthcareService: CFLHealthcareServiceExample

-------

**English**

-------

Last updated: 2026-10-07 13:28:17+0200

Profile: [CFL HealthcareService Profile](StructureDefinition-cfl-healthcare-service.md)

Service pédiatrique du CHU de Poitiers (Médecine, Chirurgie, Obstétrique (MCO)) by CHU de Bordeaux (https://finess.esante.gouv.fr#330781196 (use: official)) (75/2874)

-------

| | |
| :--- | :--- |
| Active: | true |
| Provided By: | [CHU de Bordeaux (https://finess.esante.gouv.fr#330781196 (use: official))](Organization-CFLOrganizationRequisExample.md) |
| Type: | Médecine, Chirurgie, Obstétrique (MCO) |
| Specialty: | Surveillance continue spécialisée pédiatrique |
| Characteristic: | * Téléexpertise en moins de 24h
* Téléexpertise
 |
| Contact Detail | https://Logiciel_LTLE.fr/offre_pediatrique_Bordeaux |
| null: | * ageRange: 3-10
 |
|  | 2011-06-29 |
|  | true |
| null: | * description: Offre de téléexpertise concernant des avis de pédiatrie pour les enfants de moins de 10 ans
* https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level: Accès restreint
 |



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "CFLHealthcareServiceExample",
  "meta" : {
    "lastUpdated" : "2026-10-07T13:28:17.239+02:00",
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-healthcare-service"]
  },
  "extension" : [{
    "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-sensitive-unit",
    "valueBoolean" : true
  },
  {
    "extension" : [{
      "url" : "ageRange",
      "valueRange" : {
        "low" : {
          "value" : 3
        },
        "high" : {
          "value" : 10
        }
      }
    }],
    "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-patient-type"
  },
  {
    "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-meta-creation-date",
    "valueDateTime" : "2011-06-29"
  },
  {
    "extension" : [{
      "url" : "description",
      "valueString" : "Offre de téléexpertise concernant des avis de pédiatrie pour les enfants de moins de 10 ans"
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-confidentiality-level",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite",
          "code" : "2"
        }]
      }
    }],
    "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-healthcareservice-contact"
  }],
  "identifier" : [{
    "value" : "75/2874"
  }],
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/CFLOrganizationRequisExample",
    "type" : "CFLOrganizationProfile"
  },
  "type" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite",
      "code" : "01",
      "display" : "Médecine, Chirurgie, Obstétrique (MCO)"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle",
      "code" : "391",
      "display" : "Surveillance continue spécialisée pédiatrique"
    }]
  }],
  "name" : "Service pédiatrique du CHU de Poitiers",
  "telecom" : [{
    "extension" : [{
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-communication-channel",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication",
          "code" : "4"
        }]
      }
    },
    {
      "url" : "https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition/ror-telecom-confidentiality-level",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite",
          "code" : "2"
        }]
      }
    }],
    "value" : "https://Logiciel_LTLE.fr/offre_pediatrique_Bordeaux"
  }],
  "characteristic" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil",
      "code" : "10",
      "display" : "Téléexpertise en moins de 24h"
    }]
  },
  {
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge",
      "code" : "35",
      "display" : "Téléexpertise"
    }]
  }]
}

```
