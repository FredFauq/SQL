-- SQL - Partie 8 : Les jointures
-- Toutes les tables à utiliser sont dans le fichier bdd.sql
USE `development`;


-- Exercice 1
-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
-- sélectionner dans la table language et frameworks les name
SELECT `lg`.`name`,
        `fw`.`name`
FROM `languages` AS `lg` -- dans la table languages
    LEFT JOIN `frameworks` AS `fw` -- Si un langage n'a pas de framework l'afficher aussi
    ON `lg`.`id`=`fw`.`languagesId`;


-- Exercice 2
-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
SELECT * 
FROM `languages` AS `lg`
    INNER JOIN `frameworks` AS `fw` -- critère de sélection
    ON `fw`.`languagesId`=`lg`.`id`;


-- Exercice 3
-- Afficher le nombre de framework par language.
SELECT `lg`.`name`, 
    count(`fw`.`id`) 
-- la fonction count permet de compter le nombre de ligne (le nombre de champs) dans le tableau
FROM `languages` AS `lg`
    LEFT JOIN  `frameworks` AS `fw`
    ON `lg`.`id`=`fw`.`languagesId`
    GROUP BY `lg`.`name`; -- critére de sélection


-- Exercice 4
-- Afficher les langages ayant plus de 3 frameworks.
SELECT `lg`.`name`, count(`fw`.`languagesId`) AS `nbFramework`
FROM `languages` AS `lg`
    INNER JOIN `frameworks` AS `fw`
    ON `lg`.`id`=`fw`.`languagesId`
GROUP BY `lg`.`name`
    HAVING COUNT `nbFramework`>'3';
