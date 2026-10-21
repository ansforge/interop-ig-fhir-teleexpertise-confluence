Instance: CFLPractitionnerRequerantProfileExample
InstanceOf: cfl-practitioner
Usage: #example
Description: "Exemple de ressource practitioner dans une pré demande de téléexpertise "


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
* qualification[savoirFaire].code.coding[savoirFaire].code = #SM26
