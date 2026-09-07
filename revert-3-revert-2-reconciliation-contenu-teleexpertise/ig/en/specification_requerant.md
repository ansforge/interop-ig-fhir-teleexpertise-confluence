# Contexte administratif de la demande - Confluences Téléexpertise v0.1.0

## Contexte administratif de la demande

 
There is no translation page available for the current page, so it has been rendered in the default language 

**Ce document est la propriété exclusive du GIP GRADES ESEA Nouvelle-Aquitaine. Toute reproduction intégrale ou partielle ainsi que son utilisation, ou la communication à des tiers, sans l’autorisation explicite des auteurs, est illicite.**

## Flux de contexte administratif de demande de téléexpertise

Dans le cadre du projet Confluences Téléexpertise, un professionnel de santé (requérant) pourra accéder à partir de son logiciel métier (logiciel requérant, DPI ou DUI) à un annuaire d’offres de téléexpertise (TLE) adossé au ROR et mis à disposition par Confluence Téléexpertise. Le but de ce flux est donc de pouvoir envoyer les données administratives du patient et du requérant, qui seront les premiers éléments constitutifs d’une demande, à partir du logiciel métier vers Confluences Téléexpertise. Ces données récupérées par Confluence seront ensuite transmises via le flux de demande au logiciel de téléexpertise (LTLE) et seront utilisées comme pré remplissage de la demande dans le LTLE.

Pour cela, nous avons identifié deux hypothèses techniquement distinctes :

* Cas 1 : Le logiciel requérant intègre directement l’IHM d’annuaire de l’offre sous forme de module propriétaire. Dans ce cas d’usage, ESEA Confluences Téléexpertise présente une API de « consommation de l’offre » de téléexpertise. La description de ce flux n’est pas l’objet de ce document. Toutefois, dans ce cas, il est tout de même attendu que le logiciel requérant envoie un objet « demande » à Confluences Téléexpertise. Dans ce cas, l’éditeur devra implémenter une API FHIR côté logiciel requérant qui fera des requêtes « Create » (POST) vers Confluences. Dans ce cas, il y aura l’obligation pour l’industriel éditeur choisissant de développer sa propre IHM de recherche de l’offre, de suivre des guidelines (qui feront l’objet d’un autre document de spécification) concernant l’affichage de l’offre TLE qui devra notamment être exhaustive et agnostique.
* Cas 2 : Le logiciel requérant appelle l’IHM Confluences développée par ESEA, ce faisant, il passe le contexte administratif de la demande. Ce contexte patient et requérant pourra être envoyé soit directement sous dans une requête POST simple, soit via une API FHIR avec des requêtes « Create » (POST) vers Confluences (de la même manière que le cas 1). L’utilisation de requêtes simples a pour intérêt de nécessiter moins de développement.

Le document est structuré de manière à présenter les séquences des cas 1 et 2 puis de présenter les messages FHIR / contexte en POST simple.

### Cas d’usages

Figure 1. UseCase Administratif

### Vue fonctionnelle de la demande de Téléexpertise partant du logiciel métier requérant

Figure 2. Vue fonctionnelle d'une demande préremplie par le logiciel requérant

Il s’agit ci-dessus de la représentation FHIR du flux, toutefois, lors de l’envoi en POST simple, les mêmes concepts sont envoyés.

### Envoi du flux en FHIR

#### Protocoles

L’émission des flux données administrative par le logiciel requérant sera faite à travers des requêtes de type POST.

| | | |
| :--- | :--- | :--- |
| Propriété | Valeur | Commentaire |
| Method | POST |  |
| Protocol | HTTPS |  |
| URL | Celle de Confluences |  |
| Authorization | À définir |  |
| Content-type | application/fhir+json |  |

Les protocoles et la sécurité de ceux-ci peuvent évoluer pour suivre l’état de l’art dans ce domaine.

#### Structures des flux

| | |
| :--- | :--- |
| Nom du flux | Description |
| Flux 1 : Administratif | Ce flux permet de faire passer le contexte patient et requérant du logiciel requérant vers Confluence TLE |

**Cas 1 :**

Figure 3. Diagramme de séquence IHM intégrée au logiciel métier requérant. Flux FHIR de demande.

**Cas 2 :**

Figure 4. Diagramme de séquence IHM Confluences. Flux FHIR de demande.

Afin de pouvoir envoyer la demande de téléexpertise depuis l’IHM vers le LTLE, il faut au préalable que l’IHM connaisse l’instigateur de la demande (le requérant) et quel patient est concerné. Pour cela, le logiciel requérant envoie des données concernant ces deux entités.

Les données pertinentes à envoyer sont :

* Pour le patient : Matricule INS, INS, Rang gémellaire 
* Pour le requérant : Numéro RPPS, numéro AM (Numéro utilisé pour la facturation, anciennement numéro ADELI), nom, prénom, lieux d’exercice, spécialité, FINESS si salarié

Dans le cas de l’utilisation de l’API FHIR en POST, L’envoi de ce flux se fera au travers d’un bundle de type Transaction.

L’ API FHIR (ici Confluence) recevant ce POST Bundle devra renvoyer un autre bundle de type transaction-response contenant l’URL de call back. L’appel de cette URL permettra d’appeler l’IHM de Confluences via une requête GET. Il faudra rajouter une extension avec cette URL dans la ressource Bundle.

Nous avons décidé de véhiculer les données voulues via une ressource ServiceRequest qui est enrichie (du destinataire) soit par Confluences Téléexpertise (Cas 2) soit par le logiciel métier requérant (cas 1) lors de la sélection d’une offre de Téléexpertise. Le bundle contiendra à minima, une ressource ServiceRequest, une ressource Patient et 3 ressources décrivant l’auteur (le requérant) : Practitioner, PractitionerRole et Organization. Si la transaction a été correctement effectuée et donc que la création de la demande est correctement effectuée, un code HTTP 200 OK est retourné. Il devra être accompagné d’un body FHIR « transaction-response ». Sinon, un code HTTP 500 Internal Server Error est retourné avec une ressource OperationOutcome contenant le détail des erreurs et avertissements résultant du traitement des entrées du Bundle. Autres erreurs communes : Un code HTTP 401 Unauthorized est retourné si l’authentification est non valide. Un code HTTP 403 Forbidden est retourné lorsque l’authentification ne possède pas les autorisations nécessaires. Un code HTTP 400 Bad Request est retourné lorsqu’il y a des erreurs dans la requête. Un code HTTP 404 Unknown est retourné si la ressource ciblée est introuvable.

Un code http 503 Service unavailable est retourné si la ressource ciblée est plantée.

#### Standards utilisés

Ces spécifications techniques se basent sur le standard HL7 FHIR (R4). Elles font référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API RESTful FHIR (R4), basée sur le protocole http(s). La syntaxe retenue est la syntaxe JSON.

Les ressources et profils français utilisés en base de nos surspécifications sont les suivants :

* ServiceRequest (NM 2) : profil [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html#12.14)
* Patient (NM N) : profil [fr-core-patient-ins](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins)
* Practitioner (NM 3) : profil [AS Practitioner Profile](https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner)
* PractitionerRole (NM 2) : profil AS [PractitionerRole Profile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html)
* Bundle (NM N) : profil [Bundle](https://www.hl7.org/fhir/R4/bundle.html#2.36)
* Organization (NM 3) : profil [AS Organization](https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization)

#### Contenu des flux

Nous décrivons ici les surcontraintes par rapports aux profils standards indiqués supra. Nous avons également laissé les attributs obligatoires.

Dans toutes les ressources décrites ci-après, les éléments « meta » sont obligatoires (source et profile).

Voir les profils dans la catégorie "liste des profils".

### Flux POST Simple

Nous vous proposons également d’envoyer les informations administratives du patient et du requérant dans un flux POST simple et sécurisé (HTTPS) en alternative du FHIR.

Nous écartons l’usage d’une requête GET, car les paramètres d’URL auraient exposé des données sensibles en clair et ne permettent pas la transmission du jeton PSC (pro santé connect), impliquant une double authentification.

Le body de ce flux POST sera au format JSON et contiendra les clés suivantes :

Figure 5. Diagramme de séquence IHM Confluences. Flux POST simple données administratives.

Lors de l’envoie d’une requête POST, Confluence renverra l’id de téléexpertise qui pourra être utilisée par le logiciel requérant pour s’y référencer de manière unique en cas de succès (code 200 OK).

En cas d’erreurs, les codes 400s et 500s seront retournés.

**Paramètres :**

* Patient_identifier :

Obligatoire : Identifiant du patient (INS NIR si connu sinon IPP)

* Patient_NirAyantDroit :

Optionnel : 15 chiffres (peut contenir des lettres pour les départements Corse) Numéro de Sécurité Social de l’ayant droit si le patient est mineur

* Patient_BirthName :

Obligatoire : Chaîne de caractère Nom de naissance du patient

* Patient_givenName :

Obligatoire : Chaîne de caractère Prénom du patient

* Patient_FamilyName :

Obligatoire : Chaîne de caractère Nom de famille du patient

* Patient_gender :

Obligatoire : M ou F Sexe du patient

* Patient_birthdate :

Obligatoire : format à définir Date de naissance du patient

* Patient_birthplace :

Obligatoire : 5 chiffres Code INSEE de naissance du patient

* Patient_multipleBirth :

Obligatoire : 1 chiffre Rang gémellaire du patient

* Patient_address :

Optionnel : chaîne de caractère Adresse du patient

* Patient_Contact :

Optionnel : Mail ou téléphone Point de contact du patient

* Requester_RPPS :

Obligatoire : 11 chiffres Numéro RPPS du requérant

* Requester_ADELI :

Obligatoire : 9 chiffres Numéro ADELI du requérant

* Requester_FamilyName :

Obligatoire : chaîne de caractère Nom de famille du requérant

* Requester_GivenName :

Obligatoire : chaîne de caractère Prénom du requérant

* Requester_Specialty :

Obligatoire ? : JDV Spécialité Ordinale Spécialité du Requérant

* Requester_Organization :

Optionnel : 9 chiffres Numéro FINESS géographique

* Requester_ISOrganization :

Obligatoire : F ou T T Requérant salarié d’une structure F Requérant est libéral Règle de gestion : Si True, on devra récupérer l’attribut Requester.Organization obligatoirement

**Exemple d’un body :**

{ patient: { Patient_identifier : 195536172384934, Patient_NirAyantDroit : 195536172384934, Patient_BirthName : Wayne, Patient_givenName : Bruce, Patient_FamilyName : Wayne, Patient_gender : M, Patient_birthdate : 1995-08-17, Patient_birthplace : 75345, Patient_multipleBirth : 1, Patient_address : 17 rue Villeneuve Bordeaux, Patient_Contact : bruce.wayne@gmail.com }, author_rpps: { Requester_RPPS : 1648593749374, Requester_ADELI : 1111111111, Requester_FamilyName : Kent, Requester_GivenName : Clark, Requester_Specialty : Dermatologie, Requester_Organization : CHU de Poitiers, Requester_ISOrganization : T, } }

