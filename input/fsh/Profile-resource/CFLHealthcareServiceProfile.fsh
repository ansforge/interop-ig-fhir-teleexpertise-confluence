Profile: CFLHealthcareServiceProfile
Parent: RORHealthcareService
Id: cfl-healthcare-service
Title: "CFL HealthcareService Profile"
Description: "Profil issu de RORHealthcareService"

* identifier 1..1


* specialty[operationalActivity] 1..1
* specialty[operationalActivity] from https://mos.esante.gouv.fr/NOS/JDV_J17-ActiviteOperationnelle-ROR/FHIR/JDV-J17-ActiviteOperationnelle-ROR
* specialty[operationalActivity].system = "https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle"

* specialty[operationalActivityFamily] 0..0
// Mis en 0..0 car erreur provenant du ROR : Slicing cannot be evaluated: Could not match discriminator (coding.system) for slice HealthcareService.specialty:operationalActivityFamily in profile https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence/StructureDefinition/cfl-healthcare-service|0.1.0 - the discriminator [coding.system] does not have fixed value, binding or existence assertions


* characteristic[careMode] 1..1
* characteristic[careMode] from https://mos.esante.gouv.fr/NOS/JDV_J19-ModePriseEnCharge-ROR/FHIR/JDV-J19-ModePriseEnCharge-ROR
* telecom 0..*
