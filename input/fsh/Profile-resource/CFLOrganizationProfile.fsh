Profile: CFLOrganizationProfile
Parent: AsOrganizationProfile
Id: cfl-Organization
Title: "CFL Organization Profile"
Description: "Profil issu de AsOrganizationProfile"


* identifier[finess] 1..1
* identifier[finess].type.coding.code = #FINEG 
* address 1..1
* address only AsAddressExtendedProfile