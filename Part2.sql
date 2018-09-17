-- SQL - Partie 2 : Création de tables

-- Spécifier la base de données utilisée
USE `webDevelopment`

-- Exercice 1
-- Dans la base de données webDevelopment, créer la table languages avec les colonnes :
-- id (type INT, auto-incrémenté, clé primaire)
-- language (type VARCHAR)
CREATE TABLE `languages` (
    -> id INT AUTO_INCREMENT,
    -> `language` VARCHAR(30),
    -> PRIMARY KEY (id)
    -> );
    
    -- autre écriture
    CREATE TABLE `languages` (
    -> id INT AUTO_INCREMENT PRIMARY KEY ,
    -> `language` VARCHAR(30),
    -> );
    
-- Exercice 2
-- Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :
-- id (type INT, auto-incrémenté, clé primaire)
-- tool (type VARCHAR)
CREATE TABLE `tools` (
    -> id INT AUTO_INCREMENT,
    -> `tools` VARCHAR(30),
    -> PRIMARY KEY (id)
    -> );
    
-- Exercice 3
-- Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :
-- id (type INT, auto-incrémenté, clé primaire)
-- name (type VARCHAR)
CREATE TABLE `frameworks` (
    -> id INT AUTO_INCREMENT,
    -> `name` VARCHAR(30),
    -> PRIMARY KEY (id)
    -> );
    
-- Exercice 4
-- Dans la base de données webDevelopment, créer la table librairies avec les colonnes suivantes :
-- id (type INT, auto-incrémenté, clé primaire)
-- librairy (type VARCHAR)
CREATE TABLE `librairies` (
    -> id INT AUTO_INCREMENT,
    -> `library` VARCHAR(30),
    -> PRIMARY KEY (id)
    -> );
    
-- Exercice 5
-- Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :
-- id (type INT, auto-incrémenté, clé primaire)
-- ideName (type VARCHAR)
CREATE TABLE `ide` (
    -> id INT AUTO_INCREMENT,
    -> `ideName` VARCHAR(30),
    -> PRIMARY KEY (id)
    -> );
    
-- Exercice 6
-- Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :
-- id (type INT, auto-incrémenté, clé primaire)
-- name (type VARCHAR)
CREATE TABLE IF NOT EXISTS `frameworks` (
    -> id INT AUTO_INCREMENT PRIMARY KEY ,
    -> `name` VARCHAR(30),
    -> );
    
-- Exercice 7
-- Supprimer la table tools si elle existe.
DROP TABLE IF EXISTS `tools`;

-- Exercice 8
-- Supprimer la table librairies
DROP TABLE `librairies`;

-- Exercice 9
-- Supprimer la table ide
DROP TABLE `ide`;

-- TP
-- Créer la base codex. Y créer une table clients qui aura comme colonnes :
-- Colonnes 	   Type 	Attributs
-- id 	           INT 	Auto-incrémenté, clé primaire
-- lastName 	   VARCHAR
-- firstName 	   VARCHAR 	
-- birthDate 	   DATE 	
-- address 	       VARCHAR 	
-- firstPhoneNumber 	INT
-- secondPhoneNumber 	INT
-- mail 	           VARCHAR
CREATE DATABASE IF NOT EXISTS `codex` CHARACTER SET 'UTF8';
USE `codex`
CREATE TABLE IF NOT EXISTS `clients` (
    -> id INT AUTO_INCREMENT PRIMARY KEY,
    -> `lastname` VARCHAR(30),
    -> `firstname` VARCHAR(30),
    -> `birthdate` DATE,
    -> `address` VARCHAR(255),
    -> `firstPhoneNumber` INT,
    -> `secondPhoneNumber` INT,
    -> `mail` VARCHAR(50),
    -> );
    
