# CFLOrganizationRequerantExample - Confluences Téléexpertise v0.1.0

## Exemple Organization: CFLOrganizationRequerantExample

-------

**French**

-------

Profil: [CFL Organization Profile](StructureDefinition-cfl-organization.md)

Cabinet du Dr Wayne (Identifiant interne: 10001389462001 (use: official))

-------

| | |
| :--- | :--- |
| Actif : | true |
| Coordonnées | null Bordeaux |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "CFLOrganizationRequerantExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-organization"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-v2-0203",
        "code" : "INTRN"
      }]
    },
    "system" : "https://rppsrang.esante.gouv.fr",
    "value" : "10001389462001"
  }],
  "active" : true,
  "name" : "Cabinet du Dr Wayne",
  "address" : [{
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
        "valueString" : "Villeneuve"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameType",
        "valueString" : "R"
      }]
    }],
    "city" : "Bordeaux"
  }]
}

```
