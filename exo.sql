Partie 1 - Création et suppression de bases de données

CREATE DATABASE languages;
CREATE DATABASE Webdevelment;

DROP DATABESE languages;

Partie 2 : Création de tables

CREATE TABLE languages (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
language VARCHAR (20)
);

DROP TABLE languages;

Partie 3 : Modification de tables

ALTER TABLE languages ADD version;

ALTER TABLE webDevelopment CHANGE version `versions` VARCHAR (20);
ALTER TABLE webDevelpoment MODIFY `versions` DATE;

Partie 4 : Insertion de données

INSERT INTO `languages` `version` VALUES ("Javascript", "version 5"), ("PHP", "version 2.1");

Partie 5 : Sélection de données

SELECT * FROM `languages`;
SELECT `version` FROM `languages` WHERE `version` = "PHP".
SELECT * FROM `languages` WHERE `id` IN (3, 5, 7);
SELECT `language` FROM `languages` WHERE `language` = "HTML" LIMIT 2;

Partie 6 : Sélection de données - Élargir les possibilités de la clause WHERE

SELECT `version` FROM `frameworks` WHERE `version` LIKE `version 2.%`;
SELECT * FROM `ide` WHERE `date` BETWEEN "2010-01-01" AND "2011-12-01";

Partie 7 : Suppression et modification de données

DELETE FROM `languages` WHERE `language` = "HTML";
UPDATE `frameworks` SET `framework`= "Symfony 2" WHERE `framework` = "Symfony";

Partie 8 - Les jointures 

SELECT `frameworks`.`name` AS `framework`, `languages`.`name` AS `Languages` FROM `frameworks`RIGHT JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id`;
SELECT `frameworks`.`name` AS `framework`, `languages`.`name` AS `Languages` FROM `frameworks` INNER JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id`;
SELECT COUNT(*) AS `Nombre de framework`, `languages`.`name` AS `Languages` FROM `frameworks` INNER JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id` GROUP BY `languages`.`name`;
SELECT COUNT(*) AS `Nombre de framework`, `languages`.`name` AS `Languages` FROM `frameworks` INNER JOIN `languages` ON `frameworks`.`languagesId` = `languages`.`id` GROUP BY `languages`.`name` HAVING `Nombre de framework` > 3;