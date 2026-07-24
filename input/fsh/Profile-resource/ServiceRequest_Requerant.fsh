Profile:        CFLServiceRequestRequerantProfile
Parent:         ServiceRequest
Id:             cfl-ServiceRequest-requerant
Title:          "CFL ServiceRequest Requerant Profile"
Description:    "Profil décrivant une demande de téléexpertise issu de ServiceRequest R4"
* identifier 0..*
* intent = #proposal
* authoredOn 1..1
* requester 1..1 
* requester only Reference(CFLPractitionerRoleProfile)
* subject only Reference(FRCorePatientCFL)
* performer only Reference(CFLPractitionerRoleProfile)
* patientInstruction 0..0
* note 0..0
* reasonReference 0..0
* supportingInfo only Reference(RORHealthcareService)
* extension contains SplitActiveStatus named SplitActiveStatus 0..1
* extension contains patient-consent named PatientConsent 0..1


