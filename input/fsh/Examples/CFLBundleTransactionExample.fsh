
Instance: CFLBundleTransactionExample
InstanceOf: Bundle
Usage: #example
Title: "Exemple de Bundle Transaction Confluences TLE"
Description: "Transaction contenant une demande de téléexpertise et ses ressources associées."

* type = #transaction

// Patient
* entry[+].fullUrl = "urn:uuid:11111111-1111-4111-8111-111111111111"
* entry[=].resource = CFLPatientExample
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

// Practitioner
* entry[+].fullUrl = "urn:uuid:22222222-2222-4222-8222-222222222222"
* entry[=].resource = CFLPractitionerRequerantExample
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"

// Organization
* entry[+].fullUrl = "urn:uuid:33333333-3333-4333-8333-333333333333"
* entry[=].resource = CFLOrganizationRequerantExample
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"

// PractitionerRole
* entry[+].fullUrl = "urn:uuid:44444444-4444-4444-8444-444444444444"
* entry[=].resource = CFLPractitionerRoleRequerantExample
* entry[=].request.method = #POST
* entry[=].request.url = "PractitionerRole"


// ServiceRequest
* entry[+].fullUrl = "urn:uuid:66666666-6666-4666-8666-666666666666"
* entry[=].resource = CFLServiceRequestRequerantExample
* entry[=].request.method = #POST
* entry[=].request.url = "ServiceRequest"
