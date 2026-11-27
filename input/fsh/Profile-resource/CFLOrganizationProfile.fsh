Profile: CFLOrganizationProfile
Parent: AsOrganizationProfile
Id: cfl-organization
Title: "CFL Organization Profile"
Description: "Profil d'une structure relié à un requérant"


* identifier 1..1
* identifier[finess].type.coding.code = #FINEG 
* address 1..1
* address only AsAddressExtendedProfile
