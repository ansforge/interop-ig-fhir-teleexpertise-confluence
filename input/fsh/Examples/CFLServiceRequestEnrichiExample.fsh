Instance: CFLServiceRequestEnrichiExample
InstanceOf: cfl-service-request-enrichi
Usage: #example
Description: "Exemple de ressource ServiceRequest : demande de téléexpertise enrichi du requis et l'url pointant vers le bon logiciel de téléexpertise "


* identifier.value = "8ac3a9f7-0416-4801-88e0-8db454b4fc80"
* status = #draft
* intent = #proposal

* authoredOn = "2026-09-29"

* subject = Reference(CFLPatientExample)
  * type = "CFLPatientProfile"

* requester = Reference(CFLPractitionerRoleRequerantExample)
  * type = "CFLPractitionnerRoleProfile"
	
* performer = Reference(CFLPractitionerRoleRequisExample)
  * type = "CFLPractitionnerRoleProfile"

* supportingInfo = Reference(CFLHealthcareServiceExample)
  * type = "CFLHealthcareServiceProfile"
	
		

* extension[urlLtle].valueUrl = "https://Logiciel_LTLE.fr/offre_pediatrique_Bordeaux"
* extension[PatientConsent].valueBoolean = true
