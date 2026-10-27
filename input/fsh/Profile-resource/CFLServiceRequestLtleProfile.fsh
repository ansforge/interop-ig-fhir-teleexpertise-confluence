Profile:        CFLServiceRequestLtleProfile
Parent:         CFLServiceRequestRequerantProfile
Id:             cfl-service-request-ltle
Title:          "CFL ServiceRequest LTLE Profile"
Description:    "Profil décrivant la demande de téléexpertise transmise au logiciel de téléexpertise (LTLE), issue de ServiceRequest R4 et complétée par l'URL pointant vers la bonne offre issu du ROR"
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
* extension contains url-ltle named urlLtle 1..1
* extension contains patient-consent named PatientConsent 0..1
