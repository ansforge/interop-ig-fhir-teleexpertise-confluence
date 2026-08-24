Extension: UrlLtle
Id: url-ltle
Title: "Url Ltle"
Description: "Extension créée pour spécifier l'URL pointant la demande de téléexpertise vers la bonne offre de TLE d'un logiciel de téléexpertise"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* ^url = "http://example.org/fhir/fish/StructureDefinition/fr-coreServiceRequest-urlLtle"
  
*  value[x] only url
*  valueUrl 1..1
