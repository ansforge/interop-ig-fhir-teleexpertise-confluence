# CFLOrganizationRequisProfileExample - Confluences Téléexpertise v0.1.0

## Exemple Organization: CFLOrganizationRequisProfileExample

-------

**French**

-------

Profil: [CFL Organization Profile](StructureDefinition-cfl-organization.md)

CHU de Bordeaux (https://finess.esante.gouv.fr#330781196 (use: official))

-------

| | |
| :--- | :--- |
| Actif : | true |
| Coordonnées | null Bordeaux |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "CFLOrganizationRequisProfileExample",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-organization"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "https://finess.esante.gouv.fr",
    "value" : "330781196"
  }],
  "active" : true,
  "name" : "CHU de Bordeaux",
  "address" : [{
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetNameBase",
        "valueString" : "David Johnston"
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
