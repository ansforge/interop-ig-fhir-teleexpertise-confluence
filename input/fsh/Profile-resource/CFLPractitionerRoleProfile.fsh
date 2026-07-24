Profile: CFLPractitionerRoleProfile
Parent: AsPractitionerRoleProfile
Id: cfl-practitionerrole
Title: "CFL PractitionerRole Profile"
Description: "Profil issu de AsPractitionerRoleProfile"


* identifier[numeroAm]  1..1


* active 0..1
* practitioner 1..1
* organization 1..1

* code[modeExercice] 1..1
* code[modeExercice] from https://interop.esante.gouv.fr/ig/nos/1.5.0/ValueSet-JDV-J95-ModeExercice-RASS.html