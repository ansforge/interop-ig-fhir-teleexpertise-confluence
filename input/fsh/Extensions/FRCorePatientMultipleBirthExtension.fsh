Extension: FRCorePatientMultipleBirthExtension
Id: fr-core-patient-multiple-birth
Title: "Multiple Birth "
Description: "Extension créée pour exprimer le rang gémellaire présent dans les attestations de droits à l'assurance maladie."
* ^context.type = #element
* ^context.expression = "Patient"
  
* value[x] only integer

