Extension: PatientMultipleBirth
Id: patient-multiple-birth
Title: "Patient Multiple Birth"
Description: "Extension créée pour exprimer le rang gémellaire présent dans les attestations de droits à l'assurance maladie."
* ^context.type = #element
* ^context.expression = "Patient"
* ^url = "http://example.org/fhir/fish/StructureDefinition/FRCorePatientProfile-multiple-birth"
  
* value[x] only integer

