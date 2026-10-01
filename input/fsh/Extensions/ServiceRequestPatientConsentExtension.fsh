Extension: PatientConsent
Id: patient-consent
Title: "Patient Consent"
Description: "Extension créée pour spécifier le consentement du patient "
* ^context.type = #element
* ^context.expression = "ServiceRequest"

  
* value[x] only boolean
