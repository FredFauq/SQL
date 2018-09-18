-- SQL - Partie 5 : Sélection de données
USE `webDevelopment`;
-- Exercice 1
-- Dans la table languages, afficher toutes les données de la table.
SELECT `id`,`language`,`version` FROM `languages`;

-- Exercice 2
-- Dans la table languages, afficher toutes les versions de PHP.
SELECT `version` FROM `languages` WHERE `language` ='PHP';

-- Exercice 3
-- Dans la table languages, afficher toutes les versions de PHP et de JavaScript.
SELECT `version` FROM `languages` WHERE `language` = 'PHP' or `language` = 'Javascript';

-- Exercice 4
-- Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.
SELECT `id` FROM `languages` WHERE `id`='3' or `id`='5' or `id`='7';
-- autre écriture
SELECT `id` FROM `languages` WHERE `id` IN (3,5,7);

-- Exercice 5
-- Dans la table languages, afficher les deux première entrées de JavaScript.
SELECT * FROM `languages` WHERE `language`='javascript' LIMIT 2;

-- ou
-- Exercice 6
-- Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP
SELECT * FROM `languages` WHERE `language`<>'PHP';
-- ou
SELECT * FROM `languages` WHERE `language`!='PHP';
-- ou
SELECT * FROM `languages` WHERE NOT `language`='PHP';

-- Exercice 7
-- Dans la table languages, afficher toutes les données par ordre alphabétique.
SELECT * FROM `languages` ORDER BY `language` ASC; -- ou DESC pour ordre décroissant
-- préférer :
SELECT `id`,`language`,`version` FROM `languages` ORDER BY `language`;

