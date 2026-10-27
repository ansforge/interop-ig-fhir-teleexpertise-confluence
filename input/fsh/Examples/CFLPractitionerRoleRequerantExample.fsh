Instance: CFLPractitionerRoleRequerantExample
InstanceOf: cfl-practitioner-role
Usage: #example
Description: "Exemple de ressource practitionerRole dans une pré demande de téléexpertise "


* identifier[numeroAm].use = #official
* identifier[numeroAm].system = "https://www.ameli.fr"
* identifier[numeroAm].value = "101319082"
* active = true



* practitioner = Reference(CFLPractitionerRequerantExample)
  * type = "CFLPatientProfile"

* organization = Reference(CFLOrganizationRequerantExample)
  * type = "CFLOrganizationeProfile"
	


* code[genreActivite] = https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite#GENR01 "Activité de soin et de pharmacie"
	
* code[fonction] = https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction#FON-01 "Titulaire de cabinet"

* code[modeExercice] = https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice#L "Libéral"		

