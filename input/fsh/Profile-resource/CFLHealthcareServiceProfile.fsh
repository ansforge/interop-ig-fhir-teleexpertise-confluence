Profile: CFLHealthcareServiceProfile
Parent: RORHealthcareService
Id: cfl-healthcare-service
Title: "CFL HealthcareService Profile"
Description: "Profil issu de RORHealthcareService"

* identifier 1..1


* specialty[operationalActivity] 1..1
* specialty[operationalActivity] from https://smt.esante.gouv.fr/fhir/ValueSet/JDV-J17-ActiviteOperationnelle-ROR


* characteristic[careMode] 1..1
* characteristic[careMode] from https://smt.esante.gouv.fr/fhir/ValueSet/JDV-J19-ModePriseEnCharge-ROR
* telecom 0..*
