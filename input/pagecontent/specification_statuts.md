
*Ce document est la propriété exclusive du GIP GRADES ESEA Nouvelle-Aquitaine. Toute reproduction intégrale ou partielle ainsi que son utilisation, ou la communication à des tiers, sans l’autorisation explicite des auteurs, est illicite.*


### Flux Statuts 

Ce chapitre décrit les données liées à la récupération des statuts de la demande effectuée par un professionnel de santé requérant. 

Ce flux est normé en FHIR (R4)

Etant donné qu’il n’existe pas de CI-SIS adapté à notre cas d’usage, nous avons essayé de se rapprocher le plus possible des volets CI-SIS proches fonctionnellement (Annuaire Santé) et lorsque ce n’était pas possible, nous avons modélisé à partir de FrCore d’InteropSanté France.

Suite aux différents échanges avec les éditeurs ainsi qu’avec notre intégrateur, et souhaitant prendre en compte le scénario qui intègre le fait qu’un éditeur de logiciel de gestion de cabinets développe sa propre IHM de recherche d’offre de téléexpertise, nous avons décidé d’implémenter deux méthodes de récupération des statuts :
-	Une méthode d’agrégation des statuts par confluences (Méthode « GET »)
-	Une méthode de stockage des statuts envoyés par les Logiciels de Téléexpertise (LTLE), envoyés par ces derniers, à chaque changement de statut (méthode « PUT/PATCH »)

Les éditeurs de LTLE devront implémenter l’une ou l’autre des deux méthodes.

Pour rappel voici le cycle de vie des statuts d’une demande : 

<div style="max-width: 100vw; overflow: hidden;">
  <img src="./cycle_vie_statuts.png" alt="Workflow cycle de vie des statuts d'une demande" style="max-width: 100%; height: auto; text-align: center;">
  <p class="caption" style = "text-align: center; font-style: italic;">Figure 1 Workflow cycle de vie des statuts d'une demande</p>
</div>


#### Cas d’usages

<div style="max-width: 100vw; overflow: hidden;">
  <img src="./usercase_statuts.png" alt="UseCase Statuts" style="max-width: 100%; height: auto; text-align: center;">
  <p class="caption" style = "text-align: center; font-style: italic;">Figure 2. UseCase Statuts </p>
</div>

#### Les deux méthodes de récupération des statuts par Confluences

<div style="max-width: 100vw; overflow: hidden;">
  <img src="./diagramme_sequence_statuts.png" alt="Diagramme de séquence" style="max-width: 100%; height: auto; text-align: center;">
  <p class="caption" style = "text-align: center; font-style: italic;">Figure 3. Diagramme de séquence simplifié présentant les deux méthodes de récupération des statuts par ESEA confluences</p>
</div>



#### Méthode GET :

##### Protocoles : 


Dans ce cas, la récupération des statuts des demandes par le logiciel de Confluence Téléexpertise sera faite à travers des requêtes de type GET lorsque le requérant clique pour accéder sur la vue des statuts de Confluence Téléexpertise.

Le flux GET est fait pour chaque LTLE connu et interfacé à Confluences. Confluences agrège ensuite les différentes réponses dans une « vue » statuts.

<style>
    .mon-tableau { width: 100%; border-collapse: collapse; font-family: sans-serif; }
    .mon-tableau td { border: 1px solid #ddd; padding: 10px; }
    .mon-tableau tr:first-child { background-color: #f2f2f2; font-weight: bold; color: #333; }
</style>

<table class="mon-tableau">
    <tr>
        <td>Propriété</td>
        <td>Valeur</td>
        <td>Commentaire</td>
    </tr>
    <tr>
        <td>Method</td>
        <td>GET</td>
        <td></td>
    </tr>
    <tr>
        <td>Protocol</td>
        <td>HTTPS</td>
        <td></td>
    </tr>
    <tr>
        <td>URL</td>
        <td>Les URL des API LTLE</td>
        <td></td>
    </tr>
    <tr>
        <td>Authorization</td>
        <td>À définir</td>
        <td></td>
    </tr>
    <tr>
        <td>Content-type</td>
        <td>application/fhir+json</td>
        <td></td>
    </tr>
</table>

##### Structure des flux


<table class="mon-tableau">
    <tr>
        <td>Nom du flux</td>
        <td>Description</td>
    </tr>
    <tr>
        <td>Flux 1 : Statuts</td>
        <td>Ce flux permet de faire passer les données concernant les statuts des demandes effectuées par le requérant depuis les LTLE vers la plateforme Confluences. </td>
    </tr>
</table>

Il s’agit d’une interaction Search. 

<div style="max-width: 100vw; overflow: hidden;">
  <img src="./flux_GET_recuperation_statuts.png" alt="Flux de récupération des statuts, méthode GET" style="max-width: 100%; height: auto; text-align: center;">
  <p class="caption" style = "text-align: center; font-style: italic;">Figure 4. Flux de récupération des statuts, méthode GET</p>
</div>

La récupération de ce flux se fera au travers d’un bundle de type Searchset.

Le flux statuts sera effectué par confluence à chaque appel de la vue statuts dans l’IHM Confluences TLE.

Dans les spécifications de l’envoi de la demande de téléexpertise, nous avions choisi d’utiliser la ressource ServiceRequest afin de modéliser la demande. 

En V1 de ce flux nous avions choisi de faire porter les statuts de la demande par la ressource « Procedure » et notamment l’attribut procedure.status. Cependant, le jeu de valeur associé est très limité et très contraint. Ensuite, nous nous sommes intéressés à la ressource « Task » et l’attribut task.status, tout aussi contraint mais moins limité. En effet, cette ressource Task possède une liste de statuts répondant au mieux à notre besoin (pouvoir distinguer le statut « demande publiée » et « demande en cours »).

Finalement, suite à des échanges avec plusieurs experts techniques remarquant la complexité d’embarquer plusieurs ressources seulement pour obtenir un statut manquant, nous avons décidé d’utiliser la ressource ServiceRequest pour porter à la fois les informations liées à la demande de téléexpertise et l’évolution de son statut.
A cette fin, nous avons ajouté une extension : statusReason dans la ressource ServiceRequest. Cette extension nous permet de rajouter des informations sur un statut de la demande (concrètement, elle nous permet de splitter un statut en deux). Cette extension est directement présente dans la structure de la ressource FHIR R6 de ServiceRequest, ce qui conforte notre démarche.
Ainsi, on spécifie le statut « active » de la demande soit en « demande publiée » ou soit en « demande en cours ».


Si la requête permettant de récupérer les statuts s’est bien déroulée : 

-	Un header avec un code HTTP 200 OK est retourné.  
-	Un body contenant une ressource bundle dont le type est un searchset. Le bundle encapsule 0 à n ressources ServiceRequest correspondant aux critères de recherche plus les ressources incluses correspondant aux critères de recherche. Le service indique le total trouvé dans une balise total. Dans le cas où il n’y a pas de résultat le service renvoie total : 0.

Sinon, un code HTTP 500 Internal Server Error est retourné avec une ressource OperationOutcome contenant le détail des erreurs et avertissements résultant du traitement des entrées du Bundle.

Autres erreurs communes : 

Un code HTTP 401 Unauthorized est retourné si l’authentification est non valide.
Un code HTTP 403 Forbidden est retourné lorsque l’authentification ne possède pas les autorisations nécessaires.
Un code HTTP 400 Bad Request est retourné lorsqu’il y a des erreurs dans la requête.
Un code HTTP 404 Unknown est retourné si la ressource ciblée est introuvable.
Un code http 503 Service unavailable est retourné si la ressource ciblée est plantée.


**Critères de recherche** :


<table class="mon-tableau">
    <tr>
        <td>ID</td>
        <td>Description</td>
        <td>Paramètre</td>
        <td>Type</td>
        <td>Obligatoire</td>
        <td>Carninalité</td>
    </tr>
    <tr>
        <td>1</td>
        <td>L’identifiant national du requérant (RPPS)</td>
        <td>Requester.practitioner.identifier</td>
        <td>Identifier</td>
        <td>oui</td>
        <td>[1..1]</td>
    </tr>
    <tr>
        <td>2</td>
        <td>Statut de la demande</td>
        <td>status</td>
        <td>code</td>
        <td>non</td>
        <td>[0..*]</td>
    </tr>
    <tr>
        <td>3</td>
        <td>Date de mise à jour</td>
        <td>Meta.lastupdated</td>
        <td>date</td>
        <td>oui</td>
        <td>[1..1]</td>
    </tr>
</table>

Par ailleurs, en complément des ressources ServiceRequest, afin de récupérer l’ensemble des informations qui leur sont rattachées et qui seront potentiellement exploitées par Confluences Téléexpertise (données du requis et adresse du requis), trois paramètres supplémentaires sont exploités :
-	**_include=ServiceRequest:performer** indique qu’il est nécessaire de transmettre les ressources PractitionerRole référencées par l’attribut performer associées aux ServiceRequest. La présence de cette ressource est nécessaire pour permettre de faire le lien entre la demande et les ressources Practitioner et Organization associées au requis.

-	**_include:iterate=PractionerRole:practioner** indique qu’il est nécessaire de transmettre les ressources practitioner référencées dans les ressources PractitionerRole transmises.

-	**_include:iterate=PractionerRole:organization** indique qu’il est nécessaire de transmettre les ressources organization référencées dans les ressources PractitionerRole transmises. 



Il faudra s’assurer que le paramètre **iterate** et que les **include** soient bien implémentés dans la solution.


#### Méthode PUT/PATCH 

##### Protocoles

Dans cette méthode, les statuts sont envoyés par les LTLE à Confluences à chaque changement de statut.  

La mise à jour sera faite à travers des requêtes de type PUT (update) ou PATCH.


<table class="mon-tableau">
    <tr>
        <td>Propriété</td>
        <td>Valeur</td>
        <td>Commentaire</td>
    </tr>
    <tr>
        <td>Method</td>
        <td>PUT (update) /PATCH</td>
        <td></td>
    </tr>
    <tr>
        <td>Protocol</td>
        <td>HTTPS</td>
        <td></td>
    </tr>
    <tr>
        <td>URL</td>
        <td>Endpoint ESEA Confluences</td>
        <td></td>
    </tr>
    <tr>
        <td>Authorization</td>
        <td>À définir</td>
        <td></td>
    </tr>
    <tr>
        <td>Content-type</td>
        <td>application/fhir+json</td>
        <td></td>
    </tr>
</table>


Les protocoles et la sécurité de ceux-ci peuvent évoluer pour suivre l’état de l’art dans ce domaine.


##### Structure des flux

<table class="mon-tableau">
    <tr>
        <td>Nom du flux</td>
        <td>Description</td>
    </tr>
    <tr>
        <td>Flux 1' : Statuts</td>
        <td>Ce flux permet de faire passer les données concernant les statuts des demandes effectuées par le requérant depuis les LTLE vers la plateforme Confluences. </td>
    </tr>
</table>


Concernant le flux 1’, il est attendu en réponse du LTLE, lorsque la ressource est créée : 
-	Un code 200 OK
-	Un bundle de type transaction-response dans le body
Concernant le flux 1’, Il y a 2 types de requêtes possible pour mettre à jour une ressource : PUT et PATCH.
PATCH permet de faire des modifications partielles d’une ressource, cela devra être utilisé lorsqu’il y a seulement des modifications de données des attributs statuts et statusReason.  Dans les cas où on ajoute, en plus du changement de statuts et statusReason, de nouvelles ressources comme le « performer » practitionerRole (référence le requis qui répond à la demande), il faudra utiliser PUT (update).


<div style="max-width: 100vw; overflow: hidden;">
  <img src="./flux_PUT_recuperation_statuts.png" alt="Flux de récupération des statuts, méthode PUT/PATCH" style="max-width: 100%; height: auto; text-align: center;">
  <p class="caption" style = "text-align: center; font-style: italic;">Figure 5. Flux de récupération des statuts, méthode PUT/PATCH</p>
</div>


[Lien vers la spécification FHIR](https://www.hl7.org/fhir/R4/http.html)
Hormis pour les requêtes de type PATCH, l’envoi de ces flux se fera au travers d’un bundle de type Transaction.
Dans le cas du PATCH il est attendu une mise à jour en utilisant la méthode FHIRPath.
Les opérations à utiliser lors d’un PATCH sont add et replace pour les attributs status, statusReason.
Comme dans la méthode GET, c’est la ressource FHIR « ServiceRequest » qui est utilisée pour véhiculer les statuts d’une demande.
Si la mise à jour est un succès, le serveur confluences répond en renvoyant à minima :
-	Un header avec un code 200 OK HTTP.
-	Un header Last-Modified contenant la dernière date de mise à jour de la ressource mise à jour.
-	Un header ETag contenant le nouvel identifiant de version de la ressource mise à jour.
Si la mise à jour échoue, le serveur doit répondre :

-	Un header avec un un code erreur HTTP 4XX ou 5XX.
-	Un body contenant une ressource OperationOutcome qui donne les détails sur la raison de l’échec



##### Standards utilisés



Ces spécifications techniques se basent sur le standard HL7 FHIR (R4). Elles font référence à un certain nombre de ressources du standard ainsi qu’aux spécifications de l’API RESTful FHIR (R4), basée sur le protocole http(s). La syntaxe retenue est la syntaxe JSON.

Les ressources et profils français utilisés en base de nos surspécifications sont les suivants :

* ServiceRequest (NM 2) : profil [ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html#12.14)
* Patient (NM N) : profil [fr-core-patient-ins](https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient-ins)
* Practitioner (NM 3) : profil [AS Practitioner Profile](https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner)
* PractitionerRole (NM 2) : profil AS [PractitionerRole Profile](https://interop.esante.gouv.fr/ig/fhir/annuaire/1.1.0/StructureDefinition-as-practitionerrole.html)
* Bundle (NM N) : profil [Bundle](https://www.hl7.org/fhir/R4/bundle.html#2.36)
* Organization (NM 3) : profil [AS Organization](https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization)



##### Vue fonctionnelle de la demande de TLE



<div style="max-width: 100vw; overflow: hidden;">
  <img src="./vue_fonctionnelle_demande.png" alt = " Vue fonctionnelle (UML) de l’objet demande de téléexpertise" style="width: 100%; height: auto; text-align: center;">
  <p class="caption" style = "text-align: center; font-style: italic;">Figure 6. Vue fonctionnelle (UML) de l’objet demande de téléexpertise</p>
</div>



##### Contenu des flux



Nous décrivons ici les surcontraintes par rapports aux profils standards indiqués supra. Nous avons également laissé les attributs obligatoires.

Dans toutes les ressources décrites ci-après, les éléments « meta » sont obligatoires (source et profile).

Voir les profils dans la catégorie "liste des profils".



