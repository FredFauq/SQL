/* exo 1 partie6 */

SELECT `framework`, `version`
FROM `frameworks`
WHERE `version` LIKE 'version 2.%';

/* exo 2 partie6 */

SELECT `framework`, `version`
FROM `frameworks`
WHERE `id`= 1 OR `id` = 3;

/* exo 3 partie6 */

SELECT `id`, `name`, `version`, `date`
FROM `ide`
WHERE `date` BETWEEN '2010-01-01' AND '2011-12-31';

/* exo1 partie7 */

DELETE FROM `languages`
WHERE `language` = 'HTML';

/* exo2 partie7 */

UPDATE `frameworks`
SET `version` ='Symfony2'
WHERE `version` = 'Symfony';

/* exo3 partie7 */

UPDATE `languages`
SET `version` = 'version 5.1'
WHERE `language` = 'JavaScript' AND `version`= 'version 5';

