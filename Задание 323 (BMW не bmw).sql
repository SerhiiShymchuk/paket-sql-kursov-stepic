SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS cars;
SET
    foreign_key_checks = 1;
CREATE TABLE cars (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    mark VARCHAR(100) NULL,
    model VARCHAR(100) NULL,
    color VARCHAR(100) NULL
);
INSERT INTO
    cars (id, mark, model, color)
VALUES
    (1, 'Lada', 'Kalina', 'баклажан'),
    (2, 'Toyota', 'Prius', 'зеленый'),
    (3, 'bmw', 'X1', 'черный'),
    (4, 'Ford', 'Fiesta', 'серебристый'),
    (5, 'BmW', 'X4', 'зеленый'),
    (6, 'Mazda', 'Demio', 'желтый'),
    (7, 'Bmw', 'M2', 'черный'),
    (8, 'Ford', 'Focus', 'зеленый'),
    (9, 'Nissan', 'Juke', 'синий'),
    (10, 'Ford', 'Focus', 'черный'),
    (11, 'BMW', 'X5', 'желтый'),
    (12, 'Audi', 'TT', 'серебристый'),
    (13, 'Ford', 'Kuga', 'красный'),
    (14, 'BMW', 'X3', 'желтый'),
    (15, 'Nissan', 'Patrol', 'белый');
SELECT
    *
FROM
    cars
WHERE
    mark NOT LIKE binary 'BMW'
    AND mark LIKE 'bmw';