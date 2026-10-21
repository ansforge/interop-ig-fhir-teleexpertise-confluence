<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Confluences Téléexpertise Implementation Guide</b><br>
Ce guide d'implémentation décrit les échanges FHIR entre le logiciel requérant et le logiciel de téléexpertise (LTLE) pour la gestion des demandes de téléexpertise via Confluences.
</p>

{% if site.data.info.releaselabel == 'ci-build' %}
<div style="width: 65%">
    <blockquote class="stu-note">
    <p>Cet Implementation Guide n'est pas la version courante, il s'agit de la version en intégration continue soumise à des changements fréquents uniquement destinée à suivre les travaux en cours. La version courante sera accessible via l'URL canonique suite à la première release : http://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence</p>
    </blockquote>
</div>
{% endif %}


{% if site.data.info.releaselabel == 'public-comment' %}
<div style="width: 65%">
<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 Cet Implementation Guide est actuellement en concertation. La version courante est accessible à l'adresse : http://interop.esante.gouv.fr/ig/fhir/teleexpertise-confluence</p>
</blockquote>
</div>
{% endif %}


<!--  A décommenter si CI-SIS
<div class="figure">
    <img src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS" style="width:100%;">
</div>
-->

### Contexte métier

L’objectif de Confluences Téléexpertise est de faciliter la mise en relation entre un requérant et un requis, chacun depuis leur logiciel métier.
- Un requérant doit pouvoir consulter l’offre de téléexpertise disponible dans le ROR-N et, une fois une offre choisie, accéder au formulaire correspondant à cette offre préremplie de certaines informations (données patient et sujet de la demande) afin de la compléter.
- Le requérant et le requis peuvent alors échanger des informations autour de cette demande dans le logiciel du requis.
- Le requis clôture (rejette ou traite) la demande dans son logiciel.

Confluences téléexpertise expose au requérant la liste de ses demandes et leurs statuts.

Enfin, cette IHM nécessite une authentification PSC.

<div style="max-width: 100vw; overflow: hidden;">
  <img src="./workflow_requerant.png" alt="workflow d'un envoi d'une demande de téléexpertise" style="max-width: 100%; height: auto; text-align: center;">
  <p class="caption" style = "text-align: center; font-style: italic;">Figure 1. workflow d'un envoi d'une demande de téléexpertise</p>
</div>


### Gestion des comptes utilisateurs (ici Requérants) :

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

Règles de gestions :

-   Lors de la création du compte, envoyer un mail de confirmation de création de compte.

-   L’ANS et l’éditeur conviendront du fonctionnement attendu pour la génération d’un mot de passe suite à la création du compte. L’attendu est de générer un mot de passe de manière automatisée (réinitialisable via la fonctionnalité « mot de passe oublié »).

-   Lors de la première connexion, à la suite de la création du compte, le requérant devra souscrire et valider individuellement les conditions contractuelles de l’éditeur préalablement transmises (CGU).

-   Il est attendu que l’éditeur soit en mesure de gérer les comptes sur la base de l’identifiant national (numéro RPPS en priorité).

### Auteurs et contributeurs (optionnel)

| Role  | Nom | Organisation | Contact |
| --- | --- | --- | --- |
| **Primary Editor** | Prenom Nom | Agence du Numérique en Santé | prenom.nom@address.email |

### Dépendances

{% lang-fragment dependency-table.xhtml %}

### Propriété intellectuelle

{% lang-fragment ip-statements.xhtml %}
