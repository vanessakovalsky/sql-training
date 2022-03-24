# Exercice 4 -  Sous requêtes

Cet exercice a pour objectif:
* de savoir écrire des sous-requêtes 


## Sous Requêtes dans le from 

* Ecrire la requête pour retourner les informations suivantes  :
    * Parmi les jeux sortis en 2018 et dont le nom contient un 'e', on veut récupérer le nom du jeu, son éditeur, son(ses) auteur(s) en s'assurant que le nom de l'éditeur contient un 't' 
    -> penser par étape, faites d'abord la première requêtes, puis utilisiez la dans la seconde

## Sous-requêtes dans le SELECT 

* Ecrire la requête pour retourner les informations suivantes  :
    * Calculer le pourcentage de jeux d'un éditeur par rapport au total de jeux général
        * Compter le nombre de jeux
        * Utiliser le résultat de ce calcul dans une requête pour obtenir un pourcentage


## Sous requête dans le WHERE 

* Ecrire la requête pour retourner les informations suivantes  :
    * Récupérer le liste de jeux groupées par éditeur pour la liste des 10 éditeurs ayant publié le plus de jeux
        * Obtenir la liste des 10 éditeurs ayant publiés le plus de jeux
        * Utiliser ce résultat dans un WHERE Editeurs IN (résultat)
