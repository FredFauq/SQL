-- Exercice 1
-- Dans la table frameworks, afficher toutes les données de la table ayant une version 2.x (x étant un numéro quelconque).
SELECT * FROM `frameworks` WHERE `version` LIKE '2.%';

-- Exercice 2
-- Dans la table frameworks, afficher toutes les lignes ayant pour id 1 et 3.
SELECT * FROM `frameworks` WHERE `id` IN ('1', '3');

-- Exercice 3
-- Dans la table ide, afficher toutes les lignes ayant une date comprise entre le premier janvier 2010 et le 31 decembre 2011.
SELECT * FROM `ide` WHERE `date` BETWEEN '2010-01-01' AND '2011-12-31';