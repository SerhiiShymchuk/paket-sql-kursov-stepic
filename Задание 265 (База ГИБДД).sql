SET foreign_key_checks = 0;
DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS region39;
DROP TABLE IF EXISTS avto;
DROP TABLE IF EXISTS autos;
SET foreign_key_checks = 1;
CREATE TABLE cars (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    number VARCHAR(50) NULL,
    mark VARCHAR(50) NULL,
    model VARCHAR(50) NULL
);
CREATE TABLE region39 (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    number VARCHAR(50) NULL,
    mark VARCHAR(50) NULL,
    model VARCHAR(50) NULL
);
CREATE TABLE avto (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    number VARCHAR(50) NULL,
    region INT NULL,
    mark VARCHAR(50) NULL,
    model VARCHAR(50) NULL
);
CREATE TABLE autos (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    number VARCHAR(50) NULL,
    car VARCHAR(50) NULL
);
INSERT INTO cars (id, number, mark, model)
VALUES
    (1, 'с065мк78', 'Lada', 'Kalina'),
    (2, 'с165ор78', 'Toyota', 'Prius'),
    (3, 'в764хх78', 'Pegeuot', '307');
INSERT INTO region39 (id, number, mark, model)
VALUES
    (1, 'а123ор', 'Ford', 'Fiesta'),
    (2, 'a455аа', 'Ford', 'Mondeo'),
    (3, 'х104ор', 'Mazda', 'Demio');
INSERT INTO avto (id, number, region, mark, model)
VALUES
    (1, 'Х555ХХ', 42, 'Toyota', 'Land Cruiser'),
    (2, 'С187ОР', 42, 'Ford', 'Focus'),
    (3, 'В134ВА', 42, 'Nissan', 'Juke');
INSERT INTO autos (id, number, car)
VALUES
    (1, 'в111ор55', 'Ford Focus'),
    (2, 'м259ав55', 'BMW X5'),
    (3, 'с149ма55', 'Audi TT');

SELECT
    left(number, 6) AS number,
    right(number, 2) AS region,
    mark,
    model
    FROM cars
    UNION
    SELECT
        number,
        39 AS region,
        mark,
        model
    FROM region39
    UNION
    SELECT
        number,
        region,
        mark,
        model
    FROM avto
    UNION
    SELECT
        left(number, 6) AS number,
        right(number, 2) AS region,
        SUBSTRING_INDEX(car, ' ', 1) AS mark,
        SUBSTRING_INDEX(car, ' ', -1) AS model
    FROM autos;