-- SQL - Création et suppression de bases de données

-- création de la base de données 'languages'
CREATE DATABASE `languages`;
-- création de la base de donnée 'webDevelopment' avec encodage 'UTF-8'
CREATE DATABASE `webDevelopment` CHARACTER SET 'UTF8';
-- création de la base de donnée si elle n'existe pas 'framewoks' avec encodage 'UTF-8'
CREATE DATABASE IF NOT EXISTS `frameworks` CHARACTER SET 'UTF8';
-- création de la base de donnée si elle n'existe pas 'languages' avec encodage 'UTF-8'
CREATE DATABASE IF NOT EXISTS `languages` CHARACTER SET 'UTF8';
-- suppression de la base de données 'languages'
DROP DATABASE `languages`;
-- suppression de la base de données 'framewoks' si elle existe
DROP DATABASE IF EXISTS `frameworks`;
-- suppression de la base de données 'languages' si elle existe
DROP DATABASE IF EXISTS `languages`;