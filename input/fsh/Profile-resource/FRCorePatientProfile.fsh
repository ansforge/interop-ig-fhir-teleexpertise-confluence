Profile: FRCorePatientCFL
Parent: FRCorePatientINSProfile
Id: fr-core-patient-cfl
Title: "FR Core Patient CFL"
Description: "Profil issu de FRCorePatientINSProfile"

* identifier[NSS] 0..1
* identifier[INS-NIR] 1..1
* extension contains patient-birthPlace named birthPlace 1..1
* name 1..*
* name.use from NameUseUsualOrOfficial (required)
* name.family 1..1
* name.given 1..1
* gender 1..1
* birthDate 1..1
* telecom only FRCoreContactPointProfile
* address only FRCoreAddressProfile
* extension contains PatientMultipleBirth named multipleBirth 1..1
