Instance: CFLPatientProfileExample
InstanceOf: cfl-patient
Usage: #example
Description: "Exemple de ressource patient dans une pré demande de téléexpertise "

* identifier[INS-NIR].use = #official

* identifier[INS-NIR].system = "urn:oid:1.2.250.1.213.1.4.8"

* identifier[INS-NIR].value = "123456789012244"

* name[officialName].use = #official

* name[officialName].family = "DURAND"

* name[officialName].given = "Pierre"

* gender = #male

* birthDate = "1974-12-25"

* extension[birthPlace].value.extension[inseeCode].code = #33000
* extension[birthPlace].value.extension[inseeCode].system = https://interop.esante.gouv.fr/terminologies/1.11.1/CodeSystem-TRE-R13-CommuneOM

* address.city = "Bordeaux"
* address.line.extension[streetNameBase] = "Sainte Catherine"
* address.line.extension[streetNameType] = "R"
* address.line.extension[houseNumber] = "17"

