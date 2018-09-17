-- SQL - Partie 8 : Les jointures
-- Toutes les tables à utiliser sont dans le fichier bdd.sql

-- Exercice 1
-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
-- sélectionner dans la table language et frameworks les name
SELECT `languages`.`name`, `frameworks`.`name`
FROM `languages` -- dans la table languages
LEFT JOIN `frameworks` -- Si un langage n'a pas de framework l'afficher aussi
ON `languages`.`id`=`frameworks`.`languagesId`;

-- Exercice 2
-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
SELECT * FROM `frameworks`
INNER JOIN `languages` -- critères de sélection
ON `frameworks`.`languagesId`=`languages`.`id`;

-- Exercice 3
-- Afficher le nombre de framework qu'a un language.
SELECT `languages`.`name`, count(`frameworks`.`id`) 
-- la fonction count permet de compter le nombre de ligne(le nombre d'enregistrement) dans le tableau
FROM `languages`
INNER JOIN  `frameworks`
ON `frameworks`.`languagesId`=`languages`.`id`
GROUP BY `languages`.`name`; -- critéres de sélection

-- Exercice 4
-- Afficher les langages ayant plus de 3 frameworks.
SELECT `languages`.`name`, count(`frameworks`.`id`) AS Nb_framework
FROM `languages`
INNER JOIN `frameworks`
ON `frameworks`.`languagesId`=`languages`.`id`
GROUP BY `languages`.`name`
HAVING Nb_framework>'3';
