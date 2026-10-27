Instance: CFLPractitionerRoleRequerantExample
InstanceOf: cfl-practitionerrole
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
	


* code[genreActivite] = https://interop.esante.gouv.fr/ig/nos/1.5.0/ValueSet-JDV-J94-GenreActivite-RASS#GENR01 "Activité de soin et de pharmacie"
	
* code[fonction] = https://mos.esante.gouv.fr/NOS/TRE_R21-Fonction/FHIR/TRE-R21-Fonction/TRE_R21-Fonction-FHIR#FON-01 "Titulaire de cabinet"

* code[modeExercice] = https://interop.esante.gouv.fr/ig/nos/1.5.0/ValueSet-JDV-J95-ModeExercice-RASS#L "Libéral"		

