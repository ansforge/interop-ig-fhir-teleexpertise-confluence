Extension: RedirectUrl
Id : redirect-url
Title: "Redirect Url"
Description: """Extension créée pour spécifier l'URL redirection à envoyer en réponse d'un envoie d'une demande"""
* ^context.type = #element
* ^context.expression = "Bundle.meta"
* ^url = "http://example.org/fhir/fish/StructureDefinition/TransactionResponse-RedirectUrl"
*  value[x] only url
*  valueUrl 1..1