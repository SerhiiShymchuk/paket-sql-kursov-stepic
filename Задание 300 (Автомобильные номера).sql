SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS cars;
SET
    foreign_key_checks = 1;
CREATE TABLE cars (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    number VARCHAR(50) NULL,
    mark VARCHAR(50) NULL,
    model VARCHAR(50) NULL,
    color VARCHAR(50) NULL
);
INSERT INTO
    cars (id, number, mark, model, color)
VALUES
    (1, 'с065мк78', 'Lada', 'Kalina', 'баклажан'),
    (2, 'с165ор124', 'Toyota', 'Prius', 'зеленый'),
    (3, 'в764хх45', 'Pegeuot', '307', 'черный'),
    (4, 'а123ор17', 'Ford', 'Fiesta', 'серебристый'),
    (5, 'a455аа44', 'Ford', 'Mondeo', 'зеленый'),
    (6, 'х104ор39', 'Mazda', 'Demio', 'желтый'),
    (
        7,
        'x555xx55',
        'Toyota',
        'Land Cruiser',
        'черный'
    ),
    (8, 'с187ор173', 'Ford', 'Focus', 'зеленый'),
    (9, 'в134ва14', 'Nissan', 'Juke', 'синий'),
    (10, 'в111ор78', 'Ford', 'Focus', 'черный'),
    (11, 'м259мв814', 'BMW', 'X5', 'желтый'),
    (12, 'с149се', 'Audi', 'TT', 'серебристый'),
    (13, 'к241ав71', 'Ford', 'Kuga', 'красный'),
    (14, 'м199ор12', 'Ford', 'Mondeo', 'желтый'),
    (15, 'к871ка12', 'Nissan', 'Patrol', 'белый'),
    (16, 'a245ор14', 'Ford', 'Mondeo', 'желтый');
SELECT
    *
FROM
    cars
WHERE
    mark = 'ford'
    AND color IN ('зеленый', 'желтый')
    AND number LIKE '_1__ор%';