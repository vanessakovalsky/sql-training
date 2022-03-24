-- Lister les jeux pour l'éditeur 'Gigamic' et l'éditeur 'Repos Production'
--  en rajoutant les informations de la table éditeur (annee de creation, siege, fondateurs) 
-- aux informations de la table jeux

SELECT jeux.Nom as Nom_jeu, jeux.Année, editeur_jeux.Nom 
FROM jeux  
INNER JOIN editeur_jeux ON jeux.Éditeurs = editeur_jeux.Nom
WHERE jeux.Éditeurs IN ('Gigamic', 'Repos Production')

-- Lister tous les jeux, et pour ceux dont l'editeur existe dans la table editeur 
-- récupérer les informations sur l'éditeur 
SELECT jeux.Nom as Nom_jeu, jeux.Année, editeur_jeux.Nom 
FROM jeux  
LEFT JOIN editeur_jeux ON jeux.Éditeurs = editeur_jeux.Nom


