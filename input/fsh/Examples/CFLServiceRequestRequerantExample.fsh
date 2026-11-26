Instance: CFLServiceRequestRequerantExample
InstanceOf: cfl-service-request-requerant
Usage: #example
Description: "Exemple de ressource ServiceRequest : pré-demande de téléexpertise"



* identifier.value = "8ac3a9f7-0416-4801-88e0-8db454b4fc80"
* status = #draft
* intent = #proposal

* authoredOn = "2026-09-29"

* subject = Reference(CFLPatientExample)
  * type = "Patient"

* requester = Reference(CFLPractitionerRoleRequerantExample)
  * type = "PractitionerRole"
	

* extension[PatientConsent].valueBoolean = true
