Instance: CFLPatientExample
InstanceOf: cfl-patient
Usage: #example
Description: "Exemple de ressource patient dans une pré demande de téléexpertise "

* identifier[INS-NIR].use = #official

* identifier[INS-NIR].system = "urn:oid:1.2.250.1.213.1.4.8"

* identifier[INS-NIR].value = "123456789012244"

* extension[identityReliability].extension[identityStatus].valueCoding = #VALI

* name[officialName].use = #official
* name[officialName].extension[birth-list-given-name].valueString = "Pierre Yves Romain"

* name[officialName].family = "DURAND"

* name[officialName].given = "Pierre"

* gender = #male

* birthDate = "1974-12-25"
* extension[birthPlace].valueAddress.extension[inseeCode].valueCoding.code = #33000
* extension[birthPlace].valueAddress.extension[inseeCode].valueCoding.system = "https://interop.esante.gouv.fr/terminologies/1.11.1/CodeSystem-TRE-R13-CommuneOM"

* address.city = "Bordeaux"
* address[0].line[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[0].line[0].extension[0].valueString = "rue Sainte Catherine"
* address[0].line[0].extension[1].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[0].line[0].extension[1].valueString = "17"

* extension[multipleBirth].valueInteger = 1

