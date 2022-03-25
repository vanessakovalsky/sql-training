-- Suppression column 
ALTER TABLE jeux
DROP Ages

-- Modification colum changement taille 
ALTER TABLE jeux
MODIFY COLUMN Categories VARCHAR(128)