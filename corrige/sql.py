# Module Imports
import mariadb
import sys


conn = mariadb.connect(
    user="admin",
    password="password",
    host="localhost",
    port=3306,
    database="kingoludo"
)
print(conn)
# Connect to MariaDB Platform
# try:
#     conn = mariadb.connect(
#         user="admin",
#         password="password",
#         host="localhost",
#         port=3306,
#         database="kingoludo"

#     )
# except mariadb.Error as e:
#     print(f"Error connecting to MariaDB Platform: {e}")
#     sys.exit(1)

# Get Cursor
cur = conn.cursor()

nom_du_jeu = input('Quel jeu voulez vous afficher?')
annee = 2019
resultat = cur.execute(
    "SELECT nom FROM jeux WHERE nom LIKE ? OR année = ?",
    (nom_du_jeu,annee))
print(cur.fetchall())