Profile: CFLPatientProfile
Parent: FRCorePatientINSProfile
Id: cfl-patient
Title: "CFL Patient Profile"
Description: "Profil issu de FRCorePatientINSProfile"

* identifier[NSS-NIR] 0..1
* identifier[INS-NIR] 1..1
* name 1..*
* name.use from NameUseUsualOrOfficial (required)
* name.use ^short = "usual | official"
* name.family 1..1
* name.given 1..1
* gender 1..1
* birthDate 1..1
* telecom only FRCoreContactPointProfile
* address only FRCoreAddressProfile

// Contrainte à supprimer lors du passage à FRCore 3.0.0 (extension ajoutée dans FRCore)
* extension contains FRCorePatientMultipleBirthExtension named multipleBirth 1..1
