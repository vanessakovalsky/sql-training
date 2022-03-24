-- Lister les jeux, avec leur nom, l'année de sortie, et leur éditeur, trier par année de sortie
SELECT Nom, Année, Editeurs FROM jeux ORDER BY Année;
-- Lister les jeux (toutes les colonnes) sortis avant 2020 
SELECT * FROM jeux WHERE Année < 2020;
-- Lister les jeux de l'éditeur 'Gigamic'
SELECT * FROM jeux WHERE Editeurs = 'Gigamic';
-- Lister les jeux de l'éditeur 'Repos Production' sorti avant 2015
SELECT * FROM jeux WHERE Editeurs = 'Repos Production' AND Année < 2015;