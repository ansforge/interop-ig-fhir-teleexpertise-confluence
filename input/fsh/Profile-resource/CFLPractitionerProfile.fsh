Profile: CFLPractitionerProfile
Parent: AsPractitionerProfile
Id: cfl-practitioner
Title: "CFL Practitioner Profile"
Description: "Profil issu de AsPractitionerProfile"

* identifier[idNatPs] 1..1
* name 1..*
* name.use from NameUseUsualOrOfficial (required)
* name.family 0..1
* name.given 0..1
* telecom[mailbox-mss] 0..1

* qualification[savoirFaire] 1..*
* qualification[savoirFaire].code.coding[typeSavoirFaire].system = "https://interop.esante.gouv.fr/ig/nos/1.5.0/ValueSet-JDV-J91-TypeSavoirFaire-RASS.html"
* qualification[savoirFaire].code.coding[typeSavoirFaire].code = #S (exactly)
* qualification[savoirFaire].code.coding[savoirFaire] from https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale