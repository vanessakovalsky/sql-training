-- Je récupère toutes les colonnes de la table jeux
-- SELECT * FROM jeux;

-- Recupérer les jeux qui ont comme éditeur Matagot
-- SELECT * FROM jeux WHERE Éditeurs = 'Matagot';

-- Récupérer les jeux dont la date de sortie est supérieur à 2005
-- SELECT Nom, Année FROM jeux WHERE Année > 2005;

-- Récupérer les jeux dont la date de sortie est supérieur à 2005
-- SELECT Nom, Année FROM jeux WHERE Année BETWEEN 2005 AND 2010;

-- Récupérer les données qui sont de l'un des editeurs de la liste
-- SELECT * FROM jeux WHERE Éditeurs IN ('Matagot','Repos Production','Gigamic');

-- Récupérer les données ou la colonne Auteurs est vide
-- SELECT Nom, Auteurs FROM jeux WHERE Auteurs IS NULL;    

-- Récupérer les données dont le nom contient Les et Rails 
-- SELECT Nom FROM jeux WHERE Nom LIKE '%Les%rail%';

-- Récupérer les jeux qui sont de l'éditeur Matagot et dont l'année de sortie est supérieur à 2000
-- SELECT Nom, Année FROM jeux WHERE Éditeurs = 'Matagot' AND Année > 2000 ;

-- Récupérer les jeux dont l'éditeur est Repos Production ou qui sont sorti en 2017
-- SELECT Nom, Éditeurs, Année FROM jeux WHERE Éditeurs = 'Repos Production' OR Année = 2017

-- Récupérer les jeux triés par année inverse (DESC)
-- SELECT Nom, Année FROM jeux ORDER BY Année DESC;

-- Récupérer les 20 premiers jeux de la liste
SELECT Nom FROM jeux LIMIT 20;