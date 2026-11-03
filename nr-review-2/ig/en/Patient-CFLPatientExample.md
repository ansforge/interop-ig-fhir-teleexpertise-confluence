# CFLPatientExample - Confluences Téléexpertise v0.1.0

## Example Patient: CFLPatientExample

-------

**English**

-------

Profile: [CFL Patient Profile](StructureDefinition-cfl-patient.md)

Pierre DURAND (official) Male, DoB: 1974-12-25 ( NIR définitif: 123456789012244 (use: official))

-------

| | |
| :--- | :--- |
| Contact Detail | null Bordeaux |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-birthPlace.html) |  |
| [Multiple Birth - Rang gémellaire](StructureDefinition-fr-core-patient-multiple-birth.md) | 1 |
| FR Core Patient Ident Reliability Extension: | * identityStatus: [FR Core CodeSystem v2-0445: VALI](https://hl7.fr/ig/fhir/core/2.2.0/CodeSystem-fr-core-cs-v2-0445.html#fr-core-cs-v2-0445-VALI) (Identité validée)
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "CFLPatientExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
    "valueAddress" : {
      "extension" : [{
        "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-address-insee-code",
        "valueCoding" : {
          "system" : "https://mos.esante.gouv.fr/NOS/TRE_R13-CommuneOM/FHIR/TRE-R13-CommuneOM",
          "code" : "33063",
          "display" : "Bordeaux"
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
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0445",
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
