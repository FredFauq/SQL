-----------PARTIE 8------------
--8.1. Afficher tous les frameworks associés à leurs langages. Si un langage n'a
--     pas de framework l'afficher aussi.
SELECT
  `lg`.`name` AS `Language`,  
  `fw`.`name` AS `Framework`
FROM
  `languages` AS `lg`
  LEFT JOIN `frameworks` AS `fw`
  ON `lg`.`id` = `fw`.`languagesId`;

--8.2. Afficher tous les frameworks associés à leurs langages. Si un langage n'a
--     pas de framework ne pas l'afficher.
SELECT
  `lg`.`name` AS `Language`,
  `fw`.`name` AS `Framework`
FROM
  `languages` AS `lg`
  INNER JOIN `frameworks` AS `fw` ON `lg`.`id` = `fw`.`languagesId`;

--8.3. Afficher le nombre de framework qu'a un langage.
SELECT
  `lg`.`name` AS `Language`,
  COUNT(`fw`.`languagesId`) AS `NumberOfFramework`
FROM
  `languages` AS `lg`
  LEFT JOIN `frameworks` AS `fw` ON `lg`.`id` = `fw`.`languagesId`
GROUP BY
  `lg`.`name`;

--8.4. Afficher les langages ayant plus de 3 frameworks.
SELECT
  `lg`.`name` AS `Language`,
  COUNT(`fw`.`languagesId`) AS `NumberOfFramework`
FROM
  `languages` AS `lg`
  LEFT JOIN `frameworks` AS `fw` ON `lg`.`id` = `fw`.`languagesId`
GROUP BY
  `lg`.`name`
HAVING COUNT(`fw`.`languagesId`) > 3;
