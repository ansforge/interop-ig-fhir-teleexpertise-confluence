Instance: CFLPractitionerRequisExample
InstanceOf: cfl-practitioner
Usage: #example
Description: "Exemple de ressource practitioner dans une pré demande de téléexpertise "


* identifier[rpps].use = #official
* identifier[rpps].system = "https://rpps.esante.gouv.fr"
* identifier[rpps].value = "10007209514"
* active = true


* name.family = "KENT"
* name.given = "Clark"
* name.text = "Clark KENT"


* telecom[mailbox-mss].system = #email
* telecom[mailbox-mss].value = "klark.kent@chubordeaux.mssante.fr"

* qualification[savoirFaire].code.coding[typeSavoirFaire].code = #S
* qualification[savoirFaire].code.coding[typeSavoirFaire].system = "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire"
* qualification[savoirFaire].code.coding[savoirFaire].code = #SM40