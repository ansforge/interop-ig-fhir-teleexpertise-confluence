Extension: BundleRedirectUrlExtension
Id: redirect-url
Title: "Redirect Url"
Description: """Extension créée pour spécifier l'URL de redirection à envoyer en réponse à l'envoi d'une demande"""
* ^context.type = #element
* ^context.expression = "Bundle.meta"

*  value[x] only url
*  valueUrl 1..1
