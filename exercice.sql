-- Exercice 2 Supprimer la base de données créée à l’Exercice 1 (les magics quotes permettent de différencier le code slq avec les "objets" --> alt gr + 7)
DROP DATABASE IF EXISTS `stockImages`


-- Exercice 3 Créer une base de données mediaBank avec l’encodage utf-8.
CREATE DATABASE IF NOT EXISTS `mediaBank` CHARACTER SET utf8 


-- Exercice 5 Créer une table images contenant 8 colonnes :
CREATE TABLE `images`
(
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50),
    `link` VARCHAR(250),
    `width` INT,
    `height` INT,
    `format` VARCHAR(5),
    `description` TEXT,
    `publicationDate` DATE
)


-- Exercice 5 Créer une table images contenant 8 colonnes :
CREATE TABLE `videos`
(
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `name` varchar(50)
    `link` varchar(255)
    `duration` TIME
    `description` TEXT
    `publicationDate` DATE
)


-- Exercice 6 Insérez ces deux lignes dans la table images.
INSERT INTO `images` (id, name, link, width, height, format, description, publicationDate)
 VALUES
 (1, 'orwellPortrait', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/George_Orwell_press_photo.jpg', 1176, 1596, 'jpg', 'Portrait de l’auteur Geroge Orwell', '2020-05-10'),
 (2, 'steinbeckPortrait', 'https://live.staticflickr.com/525/18306511889_1c9606e8ea_z.jpg', 640, 476, 'jpg', 'Portrait de l’auteur John Steinbeck', '2020-01-02');


 -- Exercice 6 afficher le contenu de la table
 SELECT * FROM `images`


--Exercice 6 insérez ces deux lignes dans la table videos.
INSERT INTO `videos` (id, name, link, duration, description, publicationDate)
 VALUES
 (1, '1984_trailer', 'https://www.youtube.com/watch?v=Z4rBDUJTnNU&t=4s', '2 :39','Bande annonce du film 1984', '2020-05-15'),
 (2, 'micemen_trailer', 'https://www.youtube.com/watch?v=2QnM6hsXxNE', '10 :41','Bande annonce du film des Souris et des hommes', '2020-01-02');


 -- Exercice 6 afficher le contenu de la table
 SELECT * FROM `videos`


 -- Exercice 7 Modifier la première ligne de la table images : changer la date de publication par la date du jour.
-- Afficher la ligne.
UPDATE `images`
SET `publicationDate` = '2020-11-23'
WHERE id = 1

SELECT * FROM `images` WHERE id = 1


 -- Exercice 7 Modifier la deuxième ligne de la table videos : changer la durée par 1 :41.
-- Afficher la ligne.
UPDATE `videos`
SET `duration` = '1:41'
WHERE id = 2

SELECT * FROM `videos` WHERE id = 2

-- Exercice 8 Supprimer la deuxième ligne de la table images.
DELETE FROM `images`
WHERE id = 2


-- Exercice 8 Supprimer la première ligne de la table videos.
DELETE FROM `videos`
WHERE id = 1

-- exercice 9 Supprimer la table videos.
DROP TABLE `videos`

