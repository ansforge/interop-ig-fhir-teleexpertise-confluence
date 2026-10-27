Instance: CFLPractitionerRoleRequisExample
InstanceOf: cfl-practitioner-role
Usage: #example
Description: "Exemple de ressource practitionerRole dans une pré demande de téléexpertise "


* identifier[numeroAm].use = #official
* identifier[numeroAm].system = "https://www.ameli.fr"
* identifier[numeroAm].value = "108462037"
* active = true



* practitioner = Reference(CFLPractitionerRequisExample)
  * type = "CFLPatientProfile"

* organization = Reference(CFLOrganizationRequisExample)
  * type = "CFLOrganizationeProfile"
	

* code[genreActivite] = https://mos.esante.gouv.fr/NOS/TRE_R22-GenreActivite/FHIR/TRE-R22-GenreActivite#GENR01 "Activité de soin et de pharmacie"
	

* code[modeExercice] = https://mos.esante.gouv.fr/NOS/TRE_R23-ModeExercice/FHIR/TRE-R23-ModeExercice#S "Salarié"		

* specialty = https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale#SM40 "Pédiatrie (SM)"

