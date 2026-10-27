Instance: CFLPractitionerRequerantExample
InstanceOf: cfl-practitioner
Usage: #example
Description: "Exemple de ressource Practitioner dans une pré-demande de téléexpertise"


* identifier[rpps].use = #official
* identifier[rpps].system = "https://rpps.esante.gouv.fr"
* identifier[rpps].value = "10001389462"
* active = true


* name.family = "WAYNE"
* name.given = "Bruce"
* name.text = "Bruce WAYNE"


* telecom[mailbox-mss].system = #email
* telecom[mailbox-mss].value = "bruce.wayne@chsf.mssante.fr"

* qualification[savoirFaire].code.coding[typeSavoirFaire].code = #S
* qualification[savoirFaire].code.coding[typeSavoirFaire].system = "https://mos.esante.gouv.fr/NOS/TRE_R04-TypeSavoirFaire/FHIR/TRE-R04-TypeSavoirFaire"
* qualification[savoirFaire].code.coding[savoirFaire].code = #SM26
* qualification[savoirFaire].code.coding[savoirFaire].system = "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale"
