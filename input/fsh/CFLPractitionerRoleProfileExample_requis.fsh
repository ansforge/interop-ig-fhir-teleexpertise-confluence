Instance: CFLPractitionnerRoleRequisProfileExample
InstanceOf: cfl-practitionerrole
Usage: #example
Description: "Exemple de ressource practitionerRole dans une pré demande de téléexpertise "


* identifier[numeroAm].use = #official
* identifier[numeroAm].system = "https://www.ameli.fr"
* identifier[numeroAm].value = "108462037"
* active = true



* practitioner = Reference(CFLPractitionnerRequisProfileExample)
  * type = "CFLPatientProfile"

* organization = Reference(CFLOrganizationRequisProfileExample)
  * type = "CFLOrganizationeProfile"
	

* code[genreActivite] = https://interop.esante.gouv.fr/ig/nos/1.5.0/ValueSet-JDV-J94-GenreActivite-RASS#GENR01 "Activité de soin et de pharmacie"
	

* code[modeExercice] = https://interop.esante.gouv.fr/ig/nos/1.5.0/ValueSet-JDV-J95-ModeExercice-RASS#S "Salarié"		

* specialty = https://hl7.fr/ig/fhir/core/2.1.0/ValueSet-fr-core-vs-practitioner-specialty#SM40 "Pédiatrie (SM)"

