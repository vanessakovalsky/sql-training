# Exercice 1 - Installation et exploration des outils et des données

Cet exercice a pour objectifs :
* de savoir installer un serveur MariaDB
* d'installer un client MariaDB dans VSCode
* d'explorer les données et outils


## Installer un serveur MariaDB

* Afin de pouvoir manipuler des données SQL nous avons besoin d'accéder à un serveur de données
* Celui ci peut être installer sur votre poste ou bien être mis à votre disposition par un service informatique ou un fournisseur de base de données

### Installation du serveur sur Ubuntu

* Nous allons voir comment installer un serveur MariaDB sur Ubuntu
* Commençons par insaller l'outil en executant les commandes suivantes dans un terminal (une par une):
```
sudo apt update
sudo apt install mariadb-server
sudo systemctl status mariadb
```
* Vous obtiendrez alors un résultat similaire à celui-ci : 
```
Output
● mariadb.service - MariaDB 10.3.22 database server
     Loaded: loaded (/lib/systemd/system/mariadb.service; enabled; vendor preset: enabled)
     Active: active (running) since Tue 2020-05-12 13:38:18 UTC; 3min 55s ago
       Docs: man:mysqld(8)
             https://mariadb.com/kb/en/library/systemd/
   Main PID: 25914 (mysqld)
     Status: "Taking your SQL requests now..."
      Tasks: 31 (limit: 2345)
     Memory: 65.6M
     CGroup: /system.slice/mariadb.service
             └─25914 /usr/sbin/mysqld
. . .
```

### Configuration du serveur 
* Nous allons maintenant configurer le serveur MariaDB
* Pour cela utiliser la commande :
```
sudo mysql_secure_installation
```
* Celle-ci vous demande le mot de passe, celui ci n'existant pas encore appuyer simplement sur `entrée` :
```
Output
. . .
Enter current password for root (enter for none):
```
* On vous demande ensuite si vous voulez définir un mot de passe, tapez `N` et appuyer sur  `entrée`:
```
Output
. . .

Set root password? [Y/n] N
```
* Le serveur est configuré il nous reste à créer un utilisateur d'administration

### Création d'un utilisateur pour administrer les bases de données
* Il est déconseillé d'utiliser le compte root pour administrer ses bases de données, il est préférable de créer un compte spécifique d'administration
* Pour cela on accède au serveur avec la commande :
```
sudo mariadb
```
* Il faut ensuite créer l'utilisateur avec son mot de passe (que vous pouvez modifier avant de coller la commande)
```
GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;
```
* Puis on demande à MariaDB de nettoyer les privilèges pré-enregistrés pour être sûr que notre nouvel utilisateur aura bien les droits que l'on souhaite
```
FLUSH PRIVILEGES;
```
* Enfin on quitte le serveur de mariadb
```
exit
```
* Il nous reste plus qu'a tester que notre utilisateur fonctionne :
```
mysqladmin -u admin -p version
```
* Cette commande vous demande un mot de passe, c'est celui de l'administrateur que vous avez défini (dans notre exemple il s'agit de password)
* Si tout est OK vous devriez obtenir un résultat similaire à celui-ci 
```
Output
mysqladmin  Ver 9.1 Distrib 10.3.22-MariaDB, for debian-linux-gnu on x86_64
Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Server version		10.3.22-MariaDB-1ubuntu1
Protocol version	10
Connection		Localhost via UNIX socket
UNIX socket		/var/run/mysqld/mysqld.sock
Uptime:			4 min 49 sec

Threads: 7  Questions: 467  Slow queries: 0  Opens: 177  Flush tables: 1  Open tables: 31  Queries per second avg: 1.615
```
* Le serveur est maintenant prêt à être utilisé

## Installation et utilisationn d'un client dans VSCode

* Il existe de nombreux outils qui permettent de manipuler des données dans une base de données SQL, que ce soit un terminal avec des outils comme mysqladmin ou de nombreux outils graphiques qui peuvent être installés.

### Installation de l'extension
* Nous avons choisi d'utiliser une extension de Visual Studio Code
* Ouvrir Visual Studio Code et aller dans les extensions, puis rechercher l'extension : `SQLTools MySQL/MariaDB`
* Cliquer sur le bouton Installer
* Une fois l'installation terminée, vous avez un nouvel icône qui est apparu dans la barre sur la gauche avec pour label 'SQLTools'

### Utilisation de l'extension
* Cliquer à gauche sur l'icône SQLTools
* Un nouveau panneau s'ouvre avec un premier bloc 'Connections'.
* Cliquer sur le bouton `Add new connection`
* Choisir MariaDB, puis renseigner les informations suivantes :
    * Connection name : 'Local'
    * Server Address: localhost
    * Port : 3306
    * Database : 
    * Username : admin
* -> Laisser les autres champs avec leur valeurs par défaut 
* Cliquer en bas de la page sur Test Connection, votre mot de passe vous est demander, entrer le et appuyer sur `entrée`
* Si tout est OK, vous devriez avoir un message `Successfully connected!`
* Cliquer alors sur le bouton `Save connection`
* Votre connection doit apparaitre dans le panneau à gauche avec le nom `Local`
* Cliquer dessus puis sur le bouton `Connect Now`
* Entrer la requête suivante et cliquer sur `Run Query`
```
SHOW DATABASES;
```
* Un autre panneau avec une liste de base de données doit apparaître à droite
* VOtre environnement est maintenant prêt à être utilisé pour faire des requêtes