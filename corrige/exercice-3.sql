-- JOINTURES

-- Lister les jeux pour l'éditeur 'Gigamic' et l'éditeur 'Repos Production'
--  en rajoutant les informations de la table éditeur (annee de creation, siege, fondateurs) 
-- aux informations de la table jeux

SELECT jeux.Nom as Nom_jeu, jeux.Année, editeur_jeux.*
FROM jeux  
INNER JOIN editeur_jeux ON jeux.Éditeurs = editeur_jeux.Nom
WHERE jeux.Éditeurs IN ('Gigamic', 'Repos Production');

-- Lister tous les jeux, et pour ceux dont l'editeur existe dans la table editeur 
-- récupérer les informations sur l'éditeur 
SELECT jeux.Nom as Nom_jeu, jeux.Année, editeur_jeux.*
FROM jeux  
LEFT JOIN editeur_jeux ON jeux.Éditeurs = editeur_jeux.Nom;


-- REGROUPEMENT

-- Créer une liste de jeux regroupée par éditeur

SELECT * 
FROM jeux 
GROUP BY éditeurs;

-- Créer une liste de jeux regroupée par année de sortie
SELECT * 
FROM jeux 
GROUP BY Année;

-- Compter pour chaque éditeur le nombre de jeux
SELECT COUNT(*) 
FROM jeux 
GROUP BY éditeurs;

-- Compter pour chaque année de sortie le nombre de jeux
SELECT COUNT(*) 
FROM jeux 
GROUP BY Année;

-- POUR ALLER PLUS LOIn

-- Créer une liste de jeux regroupée par année et par éditeur

SELECT * 
FROM jeux 
GROUP BY Année, éditeurs;

-- Ajouter sur cette liste les informations des éditeurs

SELECT jeux.Nom as nom_jeu, editeur_jeux.* 
FROM jeux 
INNER JOIN editeur_jeux ON jeux.éditeurs = editeur_jeux.nom
GROUP BY Année, éditeurs
ORDER BY Annee_de_creation, éditeurs;