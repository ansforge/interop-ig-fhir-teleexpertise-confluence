Profile: CFLHealthcareServiceProfile
Parent: RORHealthcareService
Id: cfl-healthcare-service
Title: "CFL HealthcareService Profile"
Description: "Profil issu de RORHealthcareService"

* identifier 1..1


* specialty[operationalActivity] 1..1
* specialty[operationalActivity] from https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR


* characteristic[careMode] 1..1
* characteristic[careMode] from https://mos.esante.gouv.fr/NOS/JDV_J19-ModePriseEnCharge-ROR/FHIR/JDV-J19-ModePriseEnCharge-ROR
* telecom 0..*
