SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS wines;
SET
    foreign_key_checks = 1;
CREATE TABLE wines (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NULL,
    count INTEGER NULL,
    price INTEGER NULL
);
INSERT INTO
    wines (id, name, count, price)
VALUES
    (1, 'Santo Stefano Rose Ambail', 3, 169),
    (2, 'Lavety Rose Sweet', 2, 200),
    (3, 'Ager Ventus Tempranillo', 0, 287),
    (4, 'El Sotillo', 0, 300),
    (5, 'Ager Ventus Rosado', 7, 300),
    (6, 'Bobal Rose Utiel Requena DO', 2, 319),
    (7, 'Happy Country Rose Syrah', 4, 319),
    (8, 'Mateus Rose', 4, 349),
    (9, 'Chardoney Pupilla', 4, 119),
    (10, 'Pays des Cotes', 4, 200);
UPDATE
    wines
SET
    price = price-1
WHERE
    price LIKE '%00';
SELECT
    *
FROM
    wines;