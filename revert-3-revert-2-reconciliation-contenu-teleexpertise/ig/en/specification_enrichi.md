# Flux de la demande - Confluences Téléexpertise v0.1.0

## Flux de la demande

 
There is no translation page available for the current page, so it has been rendered in the default language 

**Ce document est la propriété exclusive du GIP GRADES ESEA Nouvelle-Aquitaine. Toute reproduction intégrale ou partielle ainsi que son utilisation, ou la communication à des tiers, sans l’autorisation explicite des auteurs, est illicite.**

## Flux Demande

Ce chapitre décrit les données liées à la demande effectuée par un professionnel de santé requérant. Il s’agit d’un flux d’envoi depuis ESEA confluences téléexpertise et le logiciel de téléexpertise (LTLE).

Nous avons fait le choix de normer ce flux en FHIR (R4) qui est la norme d’API la plus utilisée à ce jour en santé.

Étant donné qu’il n’existe pas de CI-SIS ni de modélisation française adapté à notre cas d’usage, nous avons essayé de se rapprocher le plus possible des volets CI-SIS proches fonctionnellement (ROR, Annuaire Santé) et lorsque ce n’était pas possible, nous avons modélisé à partir de [FrCore](https://hl7.fr/ig/fhir/core/) d’InteropSanté France.

### Cas d’usages

Figure 1. UseCase demande de téléexpertise

### Protocoles

#### Flux demande :

L’émission des flux de demandes de téléexpertise par Confluence Téléexpertise sera faite à travers des requêtes de type POST.

| | | |
| :--- | :--- | :--- |
| Propriété | Valeur | Commentaire |
| Method | POST |  |
| Protocol | HTTPS |  |
| URL |  |  |
| Authorization | À définir |  |
| Content-type | application/fhir+json |  |

### Structure des flux

| | |
| :--- | :--- |
| Nom du flux | Description |
| Flux 1: DemandeTeleexpertise | Ce flux permet de faire passer le contexte patient, demande de téléexpertise et Requérant au LTLE |

Concernant ce flux, il est attendu en réponse du LTLE, lorsque la ressource est crée:

* Un code 200 OK
* Un bundle de type transaction-response dans le body

Figure 2. Flux de demande de Telexpertise

L’envoi de ce flux se fera au travers d’un bundle de type [Transaction](https://build.fhir.org/http.html#transaction).

L’ API FHIR (ici le LTLE) recevant ce POST Bundle devra renvoyer un autre bundle de type transaction-response contenant l’URL de call back. L’appel de cette URL permettra d’appeler l’IHM du LTLE via une requête GET. Il faudra rajouter une extension avec cette URL dans la ressource Bundle.

Afin de modéliser la demande, notre choix s’est porté sur la ressource ServiceRequest. En effet, cette ressource est utilisée pour une demande d'intervention, de diagnostic ou de tout autre service à planifier, proposer ou réaliser.

Cette ressource FHIR (ServiceRequest) peut être liée à des ressources modélisants les professionnels, les structures, et les offres, elle est donc adéquate.

De plus, bien que la norme FHIR permette que l’auteur soit une structure, le code de la santé publique précise que l’auteur d’une demande de téléexpertise est nécessairement un professionnel de santé. Cependant, lorsque la demande de téléexpertise émane d’un professionnel en structure, le FINESS de son entité géographique doit être véhiculé afin de permettre la facturation et nous devons donc proposer de véhiculer le FINESS au travers de ressources FHIR décrivant les structures (ie. Organization).

La ressource ServiceRequest sera également utilisée pour porter les informations liées à l’évolution des statuts de la demande.

Par défaut, ESEA Confluences Téléexpertise enverra la demande au statut « draft ».

Lors de l’envoi du bundle, ce dernier contiendra à minima une ressource ServiceRequest, une ressource Patient, 3 ressources décrivant l’auteur (le requérant) : Practitioner, PractitionerRole et une ressource optionnelle décrivant l’offre ciblée: HealthcareService

Il est attendu que le LTLE réponde un code http(s) 200 OK avec en retour un bundle de type "transaction-response" qui contiendra le lien de redirection vers le brouillon créé dans l'outil (Link->URL).

Sinon, un code HTTP 500 Internal Server Error est retourné avec une ressource OperationOutcome contenant le détail des erreurs et avertissements résultant du traitement des entrées du Bundle.

L’utilisation d’une « transaction » à base de bundle a été préférée à l’utilisation de ressources « contained » (interaction « create » + 201 Created en réponse) car la norme FHIR décourage l’utilisation de cette méthode, toutefois elle pourrait être utilisée dans notre cas d’usage. Cet arbitrage devra être fait lors de GT techniques avec les éditeurs.

Autres erreurs communes :

Un code HTTP 401 Unauthorized est retourné si l’authentification est non valide.

Un code HTTP 403 Forbidden est retourné lorsque l’authentification ne possède pas les autorisations nécessaires.

Un code HTTP 400 Bad Request est retourné lorsqu’il y a des erreurs dans la requête.

Un code HTTP 404 Unknown est retourné si la ressource ciblée est introuvable.

Un code http 503 Service unavailable est retourné si la ressource ciblée est plantée.

### Standards utilisés

Ces spécifications techniques se basent sur le standard HL7 FHIR (R4). Elles font référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API RESTful FHIR (R4), basée sur le protocole http(s). La syntaxe retenue est la syntaxe JSON.

Les ressources et profils français utilisés en base de nos surspécifications sont les suivants :

* ServiceRequest (NM 2) : profil [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html#12.14)
* Patient (NM N) : profil [fr-core-patient-ins](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins)
* Practitioner (NM 3) : profil [AS Practitioner Profile](https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner)
* PractitionerRole (NM 2) : profil AS [PractitionerRole Profile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html)
* Bundle (NM N) : profil [Bundle](https://www.hl7.org/fhir/R4/bundle.html#2.36)
* HealthcareService (NM 2): profil [ROR HealthcareService](https://interop.esante.gouv.fr/ig/fhir/ror/StructureDefinition-ror-healthcareservice.html)
* Organization (NM 3) : profil [AS Organization](https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization)

### Vue fonctionnelle de la demande de TLE

Figure 3. Vue fonctionnelle (UML) de l’objet demande de téléexpertise

### Contenu des flux

Nous décrivons ici les surcontraintes par rapports aux profils standards indiqués supra. Nous avons également laissé les attributs obligatoires.

Dans toutes les ressources décrites ci-après, les éléments « meta » sont obligatoires (source et profile).

Voir les profils dans la catégorie "liste des profils".

