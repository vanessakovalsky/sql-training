# Exercice 6 - Créer des structures de données

Cet exercice a pour objectifs :
* de savoir créer une table 
* d'utiliser des clés étrangères pour faire des liens entre les tables

## Créer une table utilisateur 

* Créer la requête permettant de créer la table 'Utilisateurs' avec la structure suivante :
    * id : integer, auto-increment, primary key
    * pseudo : varchar(128) 
    * nom : varchar(256)
    * prenom : varchar(256)
    * email : varchar(1024)
    * role : varchar(64)
    * presentation : longtext(2048), peut être null
    * mot_passe : varchar(1024)
* Puis créer une requête pour créer un utilisateur, pour le mot de passe utiliser la fonction SHA512 (https://docs.data.world/documentation/sql/reference/functions/sha512.html) pour chiffrer le mot de passe et ne pas l'enregistrer en clair

## Modifier la table jeux
* Créer la requête pour modifier la table 'jeux' et lui ajouter une colonne 'id' qui est un entier de type auto-increment et primary_key

## Pour aller plus loin

### Création d'une table collection
* Créer la requête pour créer une table 'Collection' . Celle-ci contient les champs suivants :
    * id : integer, auto-increment, primary key
    * utilisateur_id : integer, référence vers un id user (foreign key à créer)
    
### Créer la table collection_jeux
* Créer la requête pour créer une table 'Collection_jeux'. Celle-ci contient les informations suivantes :
    * collection_id : integer, référence vers un id collection (foreign key à créer)
    * jeux_id : integer, référence vers un id jeu (foreign key à créer)