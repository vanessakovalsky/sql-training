#  Exercice 2 - Première requête

Cet exercice a pour objectif : 
* De vous faire importer un jeux de données 
* De vous faire écrire vos premières requêtes de sélection de données

## Importer les données

* Ouvrir VSCode puis ouvrir une connexion vers votre base.
* Pour créer la structure de la table de jeux et importer les données, copier le contenu du fichier jeux.sql dans votre editeur de requête et exécuter les différentes requêtes de ce fichier
* Si vous obtenez cette erreur :
`Cannot destructure property 'name' of 'undefined' as it is undefined`
-> *Ce n est pas grave* il s'agit d'un bug de SQL Tools (https://github.com/mtxr/vscode-sqltools/issues/723), vos données sont bien importées

## Effectuer des requêtes

* Utiliser l'éditeur de requêtes pour créer les requêtes répondants aux demande suivants :
    * Lister les jeux, avec leur nom, l'année de sortie, et leur éditeur, trier par année de sortie
    * Lister les jeux (toutes les colonnes) sortis avant 2020 
    * Lister les jeux de l'éditeur 'Gigamic'
    * Lister les jeux de l'éditeur 'Repos Production' sorti avant 2015