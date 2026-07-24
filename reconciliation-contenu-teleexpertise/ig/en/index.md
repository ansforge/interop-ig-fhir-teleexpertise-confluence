# Accueil - Confluences Téléexpertise v0.1.0

## Accueil

 
There is no translation page available for the current page, so it has been rendered in the default language 

 **Confluences Téléexpertise Implementation Guide**
 Ce guide d'implémentation décrit les échanges FHIR entre le logiciel requérant et le logiciel de téléexpertise (LTLE) pour la gestion des demandes de téléexpertise via Confluences. 

> Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante sera accessible via l'URL canonique suite à la première release : http://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence

### Contexte métier

L’objectif de Confluences Téléexpertise est de faciliter la mise en relation entre un requérant et un requis, chacun depuis leur logiciel métier.

* Un requérant doit pouvoir consulter l’offre de téléexpertise disponible dans le ROR-N et, une fois une offre choisie, accéder au formulaire correspondant à cette offre préremplie de certaines informations (données patient et sujet de la demande) afin de la compléter.
* Le requérant et le requis peuvent alors échanger des informations autour de cette demande dans le logiciel du requis.
* Le requis clôture (rejette ou traite) la demande dans son logiciel.

Confluences téléexpertise expose au requérant la liste de ses demandes et leurs statuts.

Enfin, cette IHM nécessite une authentification PSC.

Figure 1. workflow d'un envoi d'une demande de téléexpertise

### Gestion des comptes utilisateurs (ici Requérants) :

L’objectif de cette section est de spécifier la gestion des comptes utilisateurs, ici les requérants, lorsqu’ils font une demande de téléexpertise via Confluences Téléexpertise.

Nous utiliserons les API REST du standard FHIR afin de standardiser les échanges.

Afin d’optimiser l’expérience utilisateur, il est nécessaire d’automatiser la création de compte utilisateur dans le LTLE. C'est ce qu'on appelle l'inscription silencieuse. Pour ce faire, nous utiliserons les données administratives du requérant présents dans la ressource FHIR Practitioner contenue dans le Bundle de la demande envoyée vers le LTLE. Le bundle de la demande est envoyé lorsque le requérant a choisi l’offre qui lui correspond et cliqué sur le bouton d’envoi.

Figure 2. Flux POST des données requérant

A terme, nous pourrons également récupérer les données du requérant (son ID Nat par exemple) dans le jeton user_info de ProSanté Connect. Dès qu’une demande est envoyée vers le logiciel de téléexpertise, celui-ci va devoir contrôler si le RPPS (autre identifiant national si pas de RPPS) associée au requérant est reliée à un compte utilisateur existant. S’il existe, le requérant se connecte sur son compte directement sur la page de la demande correspondante du LTLE, sinon un compte est créé en utilisant les données présentes dans la ressource Practitioner. (Voir schéma)

Figure 3. Worflow de la gestion des comptes utilisateurs envisagé

Règles de gestions :

* Lors de la création du compte, envoyer un mail de confirmation de création de compte.
* L’ANS et l’éditeur conviendront du fonctionnement attendu pour la génération d’un mot de passe suite à la création du compte. L’attendu est de générer un mot de passe de manière automatisée (réinitialisable via la fonctionnalité « mot de passe oublié »).
* Lors de la première connexion, à la suite de la création du compte, le requérant devra souscrire et valider individuellement les conditions contractuelles de l’éditeur préalablement transmises (CGU).
* Il est attendu que l’éditeur soit en mesure de gérer les comptes sur la base de l’identifiant national (numéro RPPS en priorité).

### Auteurs et contributeurs (optionnel)

| | | | |
| :--- | :--- | :--- | :--- |
| **Primary Editor** | Prenom Nom | Agence du Numérique en Santé | prenom.nom@address.email |

### Dépendances















### Propriété intellectuelle

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.2.0/CodeSystem-ISO3166Part1.html): [ActiveStatus](ValueSet-activestatus.md), [ActiveStatusCS](CodeSystem-active-status-cs.md)... Show 19 more, [AsAddressExtendedProfile](StructureDefinition-AsAddressExtendedProfile.md), [AsMailboxMSSProfile](StructureDefinition-as-mailbox-mss.md), [CFLHealthcareServiceProfile](StructureDefinition-CFL-HealthcareService-profile.md), [CFLOrganizationProfile](StructureDefinition-cfl-Organization.md), [CFLPractitionerProfile](StructureDefinition-cfl-practitioner.md), [CFLPractitionerRoleProfile](StructureDefinition-cfl-practitionerrole.md), [CFLServiceRequestEnrichiProfile](StructureDefinition-cfl-ServiceRequest-enrichi.md), [CFLServiceRequestRequerantProfile](StructureDefinition-cfl-ServiceRequest-requerant.md), [CflTransactionResponse](StructureDefinition-cfl-transaction-response-bundle.md), [ConfluencesTeleexpertise](index.md), [FRCoreAddressProfile](StructureDefinition-FRCoreAddressProfile.md), [FRCoreContactPointProfile](StructureDefinition-FRCoreContactPointProfile.md), [FRCorePatientCFL](StructureDefinition-fr-core-patient-cfl.md), [NameUseUsualOrOfficial](ValueSet-NameUseUsualOrOfficial.md), [PatientConsent](StructureDefinition-patient-consent.md), [PatientMultipleBirth](StructureDefinition-patient-multiple-birth.md), [RedirectUrl](StructureDefinition-redirect-url.md), [SplitActiveStatus](StructureDefinition-split-active-status.md) and [UrlLtle](StructureDefinition-url-ltle.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [identifierType](http://terminology.hl7.org/7.2.0/CodeSystem-v2-0203.html): [FRCorePatientCFL](StructureDefinition-fr-core-patient-cfl.md)


