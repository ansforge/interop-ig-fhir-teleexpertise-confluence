Instance: CFLHealthcareServiceExample
InstanceOf: cfl-healthcare-service
Usage: #example
Description: "Exemple de ressource HealthcareService dans une pré-demande de téléexpertise"

* meta.lastUpdated =  "2026-10-07T13:28:17.239+02:00"

* identifier.value = "75/2874"

* name = "Service pédiatrique du CHU de Poitiers"

* active = true

* type = https://mos.esante.gouv.fr/NOS/TRE_R227-ChampActivite/FHIR/TRE-R227-ChampActivite#01 "Médecine, Chirurgie, Obstétrique (MCO)"

* providedBy = Reference(CFLOrganizationRequisExample)
		* type = "CFLOrganizationProfile"

* extension[ror-healthcareservice-sensitive-unit].valueBoolean = true

* extension[ror-meta-creation-date].valueDateTime = "2011-06-29"

* extension[ror-healthcareservice-patient-type].extension[ageRange].valueRange.low.value = 3

* extension[ror-healthcareservice-patient-type].extension[ageRange].valueRange.high.value = 10 

* specialty[operationalActivity] = https://mos.esante.gouv.fr/NOS/TRE_R211-ActiviteOperationnelle/FHIR/TRE-R211-ActiviteOperationnelle#391 "Surveillance continue spécialisée pédiatrique"

* characteristic[receptionModality] = https://mos.esante.gouv.fr/NOS/TRE_R338-ModaliteAccueil/FHIR/TRE-R338-ModaliteAccueil#10 "Téléexpertise en moins de 24h"

* characteristic[careMode] = https://mos.esante.gouv.fr/NOS/TRE_R213-ModePriseEnCharge/FHIR/TRE-R213-ModePriseEnCharge#35 "Téléexpertise"

* extension[ror-healthcareservice-contact].extension[description].valueString = "Offre de téléexpertise concernant des avis de pédiatrie pour les enfants de moins de 10 ans"

* extension[ror-healthcareservice-contact].extension[ror-confidentiality-level].valueCodeableConcept.coding = https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite#2

* telecom.extension[ror-telecom-communication-channel].valueCodeableConcept.coding = https://mos.esante.gouv.fr/NOS/TRE_R200-CanalCommunication/FHIR/TRE-R200-CanalCommunication#4

* telecom.extension[ror-telecom-confidentiality-level].valueCodeableConcept.coding = https://mos.esante.gouv.fr/NOS/TRE_R283-NiveauConfidentialite/FHIR/TRE-R283-NiveauConfidentialite#2

* telecom.value = "https://Logiciel_LTLE.fr/offre_pediatrique_Bordeaux"

