# Accueil - Confluences Téléexpertise v0.1.0

## Accueil

 
There is no translation page available for the current page, so it has been rendered in the default language 

> Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante sera accessible via l'URL canonique suite à la première release : https://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence

### Introduction

Ce guide décrit la modélisation FHIR des données relatives à une demande de téléexpertise, effectuée par un professionnel de santé requérant et transmise depuis son logiciel de cabinet vers une solution de téléexpertise, via une plateforme intermédiaire désignée ici sous le nom Confluence Téléexpertise.

#### Contexte Métier

Aujourd’hui, il existe une multitude de solutions de téléexpertise, chacune proposant uniquement les offres d’expertise disponibles au sein de son propre réseau d’experts. Cette fragmentation peut compliquer la recherche, pour les professionnels de santé requérants, de l’expert le plus adapté à leur besoin.

En effet, l’offre proposée par chaque solution n’est pas exhaustive, ce qui peut contraindre les professionnels de santé à consulter plusieurs logiciels de téléexpertise afin d’identifier l’expert ou l’offre correspondant à leur demande. Cette situation peut entraîner une perte de temps et rendre le parcours de recherche plus complexe.

Figure 1. Fonctionnement actuel de la téléexpertise

Confluence Téléexpertise vise à répondre à cette problématique en proposant une plateforme intermédiaire centralisant l’offre de téléexpertise disponible, grâce à l’exploitation des données issues du ROR-N. Elle permettra ainsi aux professionnels de santé requérants d’accéder, depuis un point d’entrée unique, à une vision plus exhaustive de l’offre de téléexpertise disponible.

Figure 2. Flux Globaux de confluences

### Dépendances















### Propriété intellectuelle

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.2.0/CodeSystem-ISO3166Part1.html): [ActiveStatus](ValueSet-active-status.md), [ActiveStatusCS](CodeSystem-active-status-cs.md)... Show 15 more, [BundleRedirectUrlExtension](StructureDefinition-redirect-url.md), [CFLHealthcareServiceProfile](StructureDefinition-cfl-healthcare-service.md), [CFLOrganizationProfile](StructureDefinition-cfl-organization.md), [CFLPatientProfile](StructureDefinition-cfl-patient.md), [CFLPractitionerProfile](StructureDefinition-cfl-practitioner.md), [CFLPractitionerRoleProfile](StructureDefinition-cfl-practitioner-role.md), [CFLServiceRequestLtleProfile](StructureDefinition-cfl-service-request-ltle.md), [CFLServiceRequestRequerantProfile](StructureDefinition-cfl-service-request-requerant.md), [CFLTransactionResponseProfile](StructureDefinition-cfl-transaction-response.md), [ConfluencesTeleexpertise](index.md), [FRCorePatientMultipleBirthExtension](StructureDefinition-fr-core-patient-multiple-birth.md), [NameUseUsualOrOfficial](ValueSet-name-use-usual-or-official.md), [ServiceRequestPatientConsentExtension](StructureDefinition-patient-consent.md), [ServiceRequestSplitActiveStatusExtension](StructureDefinition-split-active-status.md) and [ServiceRequestUrlLtleExtension](StructureDefinition-url-ltle.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [identifierType](http://terminology.hl7.org/7.5.0/CodeSystem-v2-0203.html): [CFLPatientProfile](StructureDefinition-cfl-patient.md)


