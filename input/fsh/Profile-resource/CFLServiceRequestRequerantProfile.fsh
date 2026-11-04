Profile:        CFLServiceRequestRequerantProfile
Parent:         ServiceRequest
Id:             cfl-service-request-requerant
Title:          "CFL ServiceRequest Requerant Profile"
Description:    "Profil décrivant une demande de téléexpertise issue de ServiceRequest R4"
* status = #draft
* intent = #proposal
* authoredOn 1..1
* requester 1..1 
* requester only Reference(CFLPractitionerRoleProfile)
* subject only Reference(CFLPatientProfile)
* performer only Reference(CFLPractitionerRoleProfile)
* patientInstruction 0..0
* note 0..0
* reasonReference 0..0
* supportingInfo only Reference(RORHealthcareService)
* extension contains ServiceRequestSplitActiveStatusExtension named SplitActiveStatus 0..1
* extension contains patient-consent named PatientConsent 0..1


