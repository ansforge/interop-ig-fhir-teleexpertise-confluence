# CFLPatientProfileExample - Confluences Téléexpertise v0.1.0

## Exemple Patient: CFLPatientProfileExample

-------

**French**

-------

Profil: [CFL Patient Profile](StructureDefinition-cfl-patient.md)

Pierre DURAND (official) Male, Date de Naissance :1974-12-25 ( NIR définitif: 123456789012244 (use: official))

-------

| | |
| :--- | :--- |
| Coordonnées | null Bordeaux |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html) |  |
| [Multiple Birth ](StructureDefinition-fr-core-patient-multiple-birth.md) | 1 |
| FR Core Patient Ident Reliability Extension: | * identityStatus: [non précisé]: VALI (VALI)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "CFLPatientProfileExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
    "valueAddress" : {
      "extension" : [{
        "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
        "valueCoding" : {
          "system" : "https://interop.esante.gouv.fr/terminologies/1.11.1/CodeSystem-TRE-R13-CommuneOM",
          "code" : "33000"
        }
      }]
    }
  },
  {
    "url" : "https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/fr-core-patient-multiple-birth",
    "valueInteger" : 1
  },
  {
    "extension" : [{
      "url" : "identityStatus",
      "valueCoding" : {
        "code" : "VALI"
      }
    }],
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-identity-reliability"
  }],
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "code" : "INS-NIR"
      }]
    },
    "system" : "urn:oid:1.2.250.1.213.1.4.8",
    "value" : "123456789012244"
  }],
  "name" : [{
    "extension" : [{
      "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-birth-list-given-name",
      "valueString" : "Pierre Yves Romain"
    }],
    "use" : "official",
    "family" : "DURAND",
    "given" : ["Pierre"]
  }],
  "gender" : "male",
  "birthDate" : "1974-12-25",
  "address" : [{
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "rue Sainte Catherine"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "17"
      }]
    }],
    "city" : "Bordeaux"
  }]
}

```
