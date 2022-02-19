SET foreign_key_checks = 0;
DROP TABLE IF EXISTS marks;
DROP TABLE IF EXISTS models;
DROP TABLE IF EXISTS cars;
SET foreign_key_checks = 1;
CREATE TABLE marks (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
INSERT INTO marks (id, name)
VALUES
    (1, 'Lada'),
    (2, 'Toyota'),
    (3, 'Peugeot'),
    (4, 'Ford'),
    (5, 'Mazda'),
    (6, 'Nissan'),
    (7, 'BMW'),
    (8, 'Audi');
CREATE TABLE models (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    mark_id INTEGER NULL,
    name VARCHAR(50) NULL
);
INSERT INTO models (id, mark_id, name)
VALUES
    (1, 1, 'Kalina'),
    (2, 2, 'Prius'),
    (3, 3, '307'),
    (4, 4, 'Fiesta'),
    (5, 4, 'Mondeo'),
    (6, 5, 'Demio'),
    (7, 2, 'Land Cruiser'),
    (8, 4, 'Focus'),
    (9, 6, 'Juke'),
    (10, 7, 'X5'),
    (11, 8, 'TT'),
    (12, 4, 'Kuga'),
    (13, 6, 'Patrol');
CREATE TABLE cars (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    model_id INTEGER NULL,
    color VARCHAR(50) NULL,
    price INTEGER NULL
);
INSERT INTO cars (id, model_id, color, price)
VALUES
    (1, 1, 'баклажан', 180000),
    (2, 2, 'зеленый', 780000),
    (3, 3, 'черный', 230000),
    (4, 4, 'серебристый', 450000),
    (5, 5, 'зеленый', 670000),
    (6, 6, 'желтый', 220000),
    (7, 7, 'черный', 2400000),
    (8, 8, 'зеленый', 369000),
    (9, 9, 'синий', 560000),
    (10, 8, 'черный', 610000),
    (11, 10, 'желтый', 3400000),
    (12, 11, 'серебристый', 780000),
    (13, 12, 'красный', 478000),
    (14, 5, 'желтый', 350000),
    (15, 13, 'белый', 2790000);

SELECT marks.name as mark, sum(cars.price) as sum
    from marks
    join models on models.mark_id = marks.id
    join cars on cars.model_id = models.id
    group by marks.id
    order by mark;