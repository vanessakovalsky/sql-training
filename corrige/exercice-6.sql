--  Creation de la table Utilisateur
CREATE TABLE IF NOT EXISTS Utilisateurs (
    `id` INT(10) AUTO_INCREMENT PRIMARY KEY,
    `pseudo` VARCHAR(256),
    `nom` VARCHAR(256),
    `prenom` VARCHAR(256),
    `email` VARCHAR(256),
    `role` VARCHAR(64),
    `presentation` TEXT(2048),
    `mot_de_passe` VARCHAR(1024)
)

-- Insertion de l'utilisateur COLLATE

INSERT INTO Utilisateurs (nom, prenom, pseudo, email, role, mot_de_passe) 
VALUES('oto','toto','toto','toto@gmail.com','membre', SHA2('password',512))

-- Modifier la table jeux

ALTER TABLE jeux
DROP PRIMARY KEY;
ALTER TABLE jeux
ADD id INT(10) AUTO_INCREMENT PRIMARY KEY;

-- Créer la table collection

CREATE TABLE collection (
    `id` INT(10) AUTO_INCREMENT PRIMARY KEY,
    `utilisateur_id` INT(10),
    FOREIGN KEY (`utilisateur_id`) REFERENCES utilisaters(`id`)
);


-- Créer la table collection_jeux

CREATE TABLE collection_jeux (
    `collection_id` INT(10),
    `jeux_id` INT(10),
    FOREIGN KEY (`collection_id`) REFERENCES collection(`id`),
    FOREIGN KEY (`jeux_id`) REFERENCES jeux(`id`)
);