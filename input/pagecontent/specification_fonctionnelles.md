### Périmètre Fonctionnelles

#### Objectifs

L'objectif de Confluences Téléexpertise est de mettre à disposition toute l'offre de téléexpertise existante puis de faciliter la mise en relation entre un requérant et un requis, chacun depuis leur logiciel métier.

- Un requérant doit pouvoir consulter l’offre de téléexpertise disponible dans le ROR-N et, une fois une offre choisie, accéder au formulaire correspondant à cette offre préremplie de certaines informations (données patient et sujet de la demande) afin de la compléter.

- Le requérant et le requis peuvent alors échanger des informations autour de cette demande dans le logiciel du requis.

- Le requis clôture (rejette ou traite) la demande dans son logiciel.

Confluences téléexpertise expose au requérant la liste de ses demandes et leurs statuts.

Tous les utilisateurs devront être des professionnels habilités inscrits dans le RPPS.

Enfin, cette IHM nécessite une authentification PSC.


#### Fonctionalités

Quatre fonctionnalités sont identifiées : 

- Authentification PSC : 

   Le requérant doit être authentifié PSC. S’il ne s’est pas authentifié PSC à son LGC, aucun jeton ne pourra être transmis à Confluences téléexpertise. Dans ce cas, la première étape sera de s’authentifier PSC. Si cela ne lui est pas possible, l’accès à Confluence Téléexpertise sera refusé. 

- Recherche dans l’offre téléexpertise du ROR-N : 

   Lorsque le requérant accède à Confluence Téléexpertise depuis son LGC, il doit pouvoir consulter l’offre de téléexpertise décrite dans le ROR-National. Le résultat de la recherche doit être filtrable sur certains critères (spécialité de l’offre, situation géographique de l’offre etc.). Elle doit être restituée sous forme textuelle ou géographique de manière macro. Une vue détaillée d’une offre doit être possible sur demande du requérant. Il n’est pas demandé la possibilité de comparer des offres entre elles ou de visualiser simultanément la vue détaillée de plusieurs offres. 
   Enfin, Un pré demande de téléexpertise contenant le contexte patient et requérant doit également être transmie depuis le LGC vers Confluences Téléexpertise.

- Suivi des demandes : 

    Le requérant doit pouvoir visualiser l’ensemble de ses demandes faites depuis Confluences TLE afin d’avoir une visibilité sur celles clôturées, en attente de traitement etc. 

    Il sera possible de faire des recherches dans cette liste : par patient, par spécialité de l’offre, par offre, par statut de la demande etc. Par défaut, seules les demande en cours sont visibles. 

    L’accès à la demande dans le logiciel de TLE doit être possible depuis cette liste. 

- Accès à l’URL de l’offre : 

    Depuis Confluences téléexpertise, le requérant doit pouvoir accéder : 

    - A une page permettant de saisir une demande de téléexpertise en se basant sur l’URL présente dans la description d’une offre. 

    - A la page d’une demande déjà saisie afin de pouvoir notamment rajouter des informations si besoin et consulter le compte-rendu du requis. 


<div style="max-width: 100vw; overflow: hidden;">
  <img src="./workflow_requerant.png" alt="workflow d'un envoi d'une demande de téléexpertise" style="max-width: 100%; height: auto; text-align: center;">
  <p class="caption" style = "text-align: center; font-style: italic;">Figure 1. workflow d'un envoi d'une demande de téléexpertise</p>
</div>



### Gestion des comptes utilisateurs (ici Requérants) :

L’objectif de cette section est de spécifier la gestion des comptes utilisateurs, ici les requérants, lorsqu’ils font une demande de téléexpertise via Confluences Téléexpertise. 

Nous utiliserons les API REST du standard FHIR afin de standardiser les échanges.

Afin d’optimiser l’expérience utilisateur, il est nécessaire d’automatiser la création de compte utilisateur dans le LTLE. C'est ce qu'on appelle l'inscription silencieuse.
Pour ce faire, nous utiliserons les données administratives du requérant présents dans la ressource FHIR Practitioner contenue dans le Bundle de la demande envoyée vers le LTLE. 
Le bundle de la demande est envoyé lorsque le requérant a choisi l’offre qui lui correspond et cliqué sur le bouton d’envoi.



<div style="max-width: 100vw; overflow: hidden;">
  <img src="./flux_Post_Practitioner.png" alt="flux post pract" style="max-width: 100%; height: auto; text-align: center;">
  <p class="caption" style = "text-align: center; font-style: italic;">Figure 2. Flux POST des données requérant</p>
</div>

A terme, nous pourrons également récupérer les données du requérant (son ID Nat par exemple) dans le jeton user_info de ProSanté Connect.
Dès qu’une demande est envoyée vers le logiciel de téléexpertise, celui-ci va devoir contrôler si le RPPS (autre identifiant national si pas de RPPS) associée au requérant est reliée à un compte utilisateur existant. 
S’il existe, le requérant se connecte sur son compte directement sur la page de la demande correspondante du LTLE, sinon un compte est créé en utilisant les données présentes dans la ressource Practitioner. (Voir schéma)

<div style="max-width: 100vw; overflow: hidden;">
  <img src="./gestion_compte_utilisateur.png" alt="Worflow de la gestion des comptes" style="max-width: 100%; height: auto; text-align: center;">
  <p class="caption" style = "text-align: center; font-style: italic;">Figure 3. Worflow de la gestion des comptes utilisateurs envisagé</p>
</div>

Règles de gestions :

-   Lors de la création du compte, envoyer un mail de confirmation de création de compte.
    
-   L’ANS et l’éditeur conviendront du fonctionnement attendu pour la génération d’un mot de passe suite à la création du compte. L’attendu est de générer un mot de passe de manière automatisée (réinitialisable via la fonctionnalité « mot de passe oublié »).
    
-   Lors de la première connexion, à la suite de la création du compte, le requérant devra souscrire et valider individuellement les conditions contractuelles de l’éditeur préalablement transmises (CGU).
    
-   Il est attendu que l’éditeur soit en mesure de gérer les comptes sur la base de l’identifiant national (numéro RPPS en priorité).

