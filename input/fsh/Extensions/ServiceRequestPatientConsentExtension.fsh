Extension: PatientConsent
Id: patient-consent
Title: "Patient Consent"
Description: "Extension créée pour spécifier le consentement du patient "
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* ^url = "http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-patientConsent"
  
* value[x] only boolean