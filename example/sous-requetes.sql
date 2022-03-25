-- Sous requetes dans un from
SELECT jeux_2010.Nom, jeux_2010.Categories
FROM 
    (SELECT * FROM jeux WHERE Année between 2010 AND 2020 ) as jeux_2010
ORDER BY jeux_2010.Categories desc;


-- Sous requête dans un select (ne doit renvoyer qu'une valeur)
SELECT COUNT(*) * 100 / (SELECT COUNT(*) FROM jeux) , Année
FROM jeux
GROUP BY Année


-- Sous requêts dans un where
SELECT Nom, Année FROM jeux
where Année in (
SELECT année FROM jeux WHERE Année > 2012 GROUP BY année ORDER BY COUNT(Nom) DESC)
ORDER BY Année DESC

-- Sous requête dans un having BETWEEN
SELECT année 
FROM jeux 
GROUP BY année 
HAVING COUNT(Nom) < (SELECT COUNT(Année) / 10 FROM jeux)
ORDER BY COUNT(Nom) DESC