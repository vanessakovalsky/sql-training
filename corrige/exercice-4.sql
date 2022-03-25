-- Parmi les jeux sortis en 2018 et dont le nom contient un 'e', on veut récupérer le nom du jeu, son éditeur, son(ses) auteur(s) en s'assurant que le nom de l'éditeur contient un 't' 
SELECT jeux_e.nom, jeux_e.éditeurs, jeux_e.auteurs 
FROM (SELECT nom, éditeurs, auteurs FROM jeux WHERE année = 2018 AND nom LIKE '%e') as jeux_e
WHERE jeux_e.éditeurs LIKE '%t%';

-- Calculer le pourcentage de jeux d'un éditeur par rapport au total de jeux général

SELECT COUNT(*) * 100 / (SELECT COUNT(*) FROM jeux) , éditeurs
FROM jeux
GROUP BY éditeurs;

-- Récupérer le liste de jeux groupées par éditeur pour la liste des 10 éditeurs ayant publié le plus de jeux

SELECT Nom, éditeurs FROM jeux
where éditeurs in (
SELECT editeurs_limit.éditeurs FROM (SELECT éditeurs FROM jeux GROUP BY éditeurs ORDER BY COUNT(Nom) DESC LIMIT 10) as editeurs_limit)
ORDER BY éditeurs;