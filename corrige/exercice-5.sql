-- Insertion de données

INSERT INTO jeux (nom, année, joueurs, duree, categories, éditeurs, auteurs, illustrateurs)
VALUES ('Les aventuriers du rail - Le train des loco',2022,'1','5-30','12+','Casse-tête','Smart Games','Alan R. Moon','Julien Delval');

-- Modification de données

UPDATE jeux 
SET 
    éditeurs = 'CMON', 
    auteurs = 'Raphaël Guiton, Jean-Baptiste Lullien, Nicolas Raoult', 
    illustrateurs = 'Mathieu Harlaut, Eric Nouhaut, Edouard Guiton, Nicolas Fructus, Miguel Coimbra' 
WHERE nom LIKE '%Zombicide%' ;

-- Suppression de données

DELETE FROM jeux WHERE nom IN (
    'Animal Rescue',
    'Arctic Scavangers',
    'Balade à Burano',
    'Lanterns Dice'
);