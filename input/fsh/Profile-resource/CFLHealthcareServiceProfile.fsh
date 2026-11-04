Profile: CFLHealthcareServiceProfile
Parent: RORHealthcareService
Id: cfl-healthcare-service
Title: "CFL HealthcareService Profile"
Description: "Profil issu de RORHealthcareService"

* identifier 1..1


* specialty[operationalActivity] 1..1
* specialty[operationalActivity] from https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle


* characteristic[careMode] 1..1
* characteristic[careMode] from https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge/
* telecom 0..*
