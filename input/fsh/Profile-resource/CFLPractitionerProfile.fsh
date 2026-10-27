Profile: CFLPractitionerProfile
Parent: AsPractitionerProfile
Id: cfl-practitioner
Title: "CFL Practitioner Profile"
Description: "Profil issu de AsPractitionerProfile"

* identifier[rpps] 1..1
* name 1..*
* name.use from NameUseUsualOrOfficial (required)
* name.family 0..1
* name.given 0..1
* telecom[mailbox-mss] 0..1

* qualification[savoirFaire] 1..*
* qualification[savoirFaire].code.coding[typeSavoirFaire].system = "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire"
* qualification[savoirFaire].code.coding[typeSavoirFaire].code = #S (exactly)
* qualification[savoirFaire].code.coding[savoirFaire] from https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-practitioner-specialty
