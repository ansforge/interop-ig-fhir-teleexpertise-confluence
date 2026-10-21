Instance: CFLServiceRequestEnrichiExample
InstanceOf: cfl-ServiceRequest-enrichi
Usage: #example
Description: "Exemple de ressource ServiceRequest : pré demande de téléexpertise "


* identifier.value = "8ac3a9f7-0416-4801-88e0-8db454b4fc80"
* status = #draft
* intent = #proposal

* authoredOn = "2026-09-29"

* subject = Reference(CFLPatientProfileExample)
  * type = "CFLPatientProfile"

* requester = Reference(CFLPractitionnerRoleRequerantProfileExample)
  * type = "CFLPractitionnerRoleProfile"
	


* supportingInfo = Reference(CFLHealthcareServiceProfileExample)
  * type = "CFLHealthcareServiceProfile"
	
		

* extension[urlLtle].valueUrl = "https://Logiciel_LTLE.fr/offre_pediatrique_Bordeaux"
* extension[PatientConsent].valueBoolean = true
