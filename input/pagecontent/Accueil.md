### Introduction

Ce guide décrit la modélisation FHIR des données relatives à une demande de téléexpertise, effectuée par un professionnel de santé requérant et transmise depuis son logiciel de cabinet vers une solution de téléexpertise, via une plateforme intermédiaire désignée ici sous le nom Confluence Téléexpertise.


#### Contexte Métier

Aujourd’hui, il existe une multitude de solutions de téléexpertise, chacune proposant uniquement les offres d’expertise disponibles au sein de son propre réseau d’experts. Cette fragmentation peut compliquer la recherche, pour les professionnels de santé requérants, de l’expert le plus adapté à leur besoin.

En effet, l’offre proposée par chaque solution n’est pas exhaustive, ce qui peut contraindre les professionnels de santé à consulter plusieurs logiciels de téléexpertise afin d’identifier l’expert ou l’offre correspondant à leur demande. Cette situation peut entraîner une perte de temps et rendre le parcours de recherche plus complexe.

<div style="max-width: 100vw; overflow: hidden;">
  <img src="./Situation_Actuelle.png" alt="Fonctionnement actuel de la téléexpertise" style="max-width: 100%; height: auto; text-align: center;">
  <p class="caption" style = "text-align: center; font-style: italic;">Figure 1. Fonctionnement actuel de la téléexpertise</p>
</div>


Confluence Téléexpertise vise à répondre à cette problématique en proposant une plateforme intermédiaire centralisant l’offre de téléexpertise disponible, grâce à l’exploitation des données issues du ROR-N. Elle permettra ainsi aux professionnels de santé requérants d’accéder, depuis un point d’entrée unique, à une vision plus exhaustive de l’offre de téléexpertise disponible.

<div style="max-width: 100vw; overflow: hidden;">
  <img src="./flux_globaux_confluences.png" alt="Flux globaux confluences" style="max-width: 100%; height: auto; text-align: center;">
  <p class="caption" style = "text-align: center; font-style: italic;">Figure 2. Flux Globaux de confluences</p>
</div>




### FHIR Shorthand Resources

FHIR Shorthand calls currently are the second Thursday of every month at 9 am Eastern US Time. [Click here to join](https://teams.microsoft.com/l/meetup-join/19%3ameeting_OGJmYmVlM2UtYzVkZi00YWJjLWJlNzMtN2ZkYTVkYTA1Mzlk%40thread.v2/0?context=%7b%22Tid%22%3a%22c620dc48-1d50-4952-8b39-df4d54d74d82%22%2c%22Oid%22%3a%22f9a60b6f-fbcc-48d0-bc8e-d6d742b4b339%22%7d)

[HL7 Confluence site](https://confluence.hl7.org/display/FHIRI/FHIR+Shorthand)

[FHIR Shorthand Documentation](https://build.fhir.org/ig/HL7/fhir-shorthand) 

[FHIR Shorthand documentation code repository](https://github.com/HL7/fhir-shorthand)

[SUSHI code repository](https://github.com/FHIR/sushi)

[Zulip](https://chat.fhir.org) channel: #shorthand


