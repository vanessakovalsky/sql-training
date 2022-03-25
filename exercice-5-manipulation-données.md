# Exercice 5 - Manipulation de données

Cet exercice a pour objectifs :
* de savoir insérer des données
* de savoir les modifier
* de savoir les supprimer

## Insertion de données

* Ecrire la requête pour faire l'action suivante :
    * Ajouter un jeu avec les informations suivantes :
        * Nom du jeu : 'Les aventuriers du rail - Le train des loco'
        * Année : '2022'
        * Joueurs : '1'
        * Durée : '5-30'
        * Ages : '12+'
        * Catégories : 'Casse-tête'
        * Editeurs: 'Smart Games'
        * Auteurs : 'Alan R. Moon'
        * Illustrateurs : 'Julien Delval'

## Modification de données

* Ecrire la requête pour faire l'action suivante :
    * On veut modifier le jeu dont le nom contient 'Zombicide' et mettre les valeurs suivantes :
        * éditeurs : 'CMON'
        * auteurs : 'Raphaël Guiton, Jean-Baptiste Lullien, Nicolas Raoult'
        * Illustrateurs : 'Mathieu Harlaut, Eric Nouhaut, Edouard Guiton, Nicolas Fructus, Miguel Coimbra'

## Suppression de données
* Ecrire la requête pour faire l'action suivante :
    * Supprimer les jeux avec le nom suivants :
        * 'Animal Rescue'
        * 'Arctic Scavangers'
        * 'Balade à Burano'
        * 'Lanterns Dice'

## Pour aller plus loin

### Se connecter depuis Python

* Nous allons maintenant utiliser SQL avec Python
* Installer la librairie pour utiliser mariadb
```
sudo apt install libmariadb3 libmariadb-dev
sudo apt install python3-pip
sudo pip3 install mariadb
```
* Créer un fichier connexion.py et mettre le code suivant en l'adaptant avec vos données de connexions : 
```
# Module Imports
import mariadb
import sys

# Connect to MariaDB Platform
try:
    conn = mariadb.connect(
        user="db_user",
        password="db_user_passwd",
        host="192.0.2.1",
        port=3306,
        database="employees"

    )
except mariadb.Error as e:
    print(f"Error connecting to MariaDB Platform: {e}")
    sys.exit(1)

# Get Cursor
cur = conn.cursor()
```
* Une fois la connexion établie vous pouvez éxecuter vos requête avec la méthode execute :
```
nom_du_jeu = input('Quel jeu voulez vous afficher?')
cur.execute(
    "SELECT nom FROM jeux WHERE nom=?", 
    (nom_du_jeu,))
```
* Vous pouvez maintenant récupérer vos listes de jeux, les ajouter / modifier / supprimer depuis Python en créant vos propres requêtes