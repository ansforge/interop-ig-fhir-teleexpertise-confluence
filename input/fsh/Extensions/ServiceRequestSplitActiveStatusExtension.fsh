Extension: SplitActiveStatus
Id: split-active-status
Title: "Split Active Status"
Description: "Extension créée pour spécifier l'état d'une demande active. Soit demande publiée (ready), pas encore prise en charge par un expert. Soit demande en cours (in progress), demande prise en charge par un expert. Cette extension s'inspire de l'élément ServiceRequest.statusReason R6: https://build.fhir.org/servicerequest-definitions.html#ServiceRequest.statusReason."
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* ^url = "http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-SplitActiveStatus"
  
* value[x] only Coding
* valueCoding.code from ActiveStatus (required)

ValueSet: ActiveStatus
Id: activestatus

* ^experimental = true
* include codes from system ActiveStatusCS

CodeSystem: ActiveStatusCS
Id: active-status-cs

* ^experimental = true
* #in_progress "in progress"
* #ready "ready"