### Introduction

Ce guide décrit la modélisation FHIR des données relatives à une demande de téléexpertise, effectuée par un professionnel de santé requérant et transmise depuis son logiciel de cabinet vers une solution de téléexpertise, via une plateforme intermédiaire désignée ici sous le nom Confluence Téléexpertise.


#### Contexte Métier

Aujourd’hui, il existe une multitude de solutions de téléexpertise, chacune proposant uniquement les offres d’expertise disponibles au sein de son propre réseau d’experts. Cette fragmentation peut compliquer la recherche, pour les professionnels de santé requérants, de l’expert le plus adapté à leur besoin.

En effet, l’offre proposée par chaque solution n’est pas exhaustive, ce qui peut contraindre les professionnels de santé à consulter plusieurs logiciels de téléexpertise afin d’identifier l’expert ou l’offre correspondant à leur demande. Cette situation peut entraîner une perte de temps et rendre le parcours de recherche plus complexe.

<div style="max-width: 100vw; overflow: hidden;">
  <img src="./situation-actuelle.png" alt="Fonctionnement actuel de la téléexpertise" style="max-width: 100%; height: auto; text-align: center;">
  <p class="caption" style = "text-align: center; font-style: italic;">Figure 1. Fonctionnement actuel de la téléexpertise</p>
</div>


Confluence Téléexpertise vise à répondre à cette problématique en proposant une plateforme intermédiaire centralisant l’offre de téléexpertise disponible, grâce à l’exploitation des données issues du ROR-N. Elle permettra ainsi aux professionnels de santé requérants d’accéder, depuis un point d’entrée unique, à une vision plus exhaustive de l’offre de téléexpertise disponible.

<div style="max-width: 100vw; overflow: hidden;">
  <img src="./flux-globaux-confluences.png" alt="Flux globaux confluences" style="max-width: 100%; height: auto; text-align: center;">
  <p class="caption" style = "text-align: center; font-style: italic;">Figure 2. Flux Globaux de confluences</p>
</div>
