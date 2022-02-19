SET foreign_key_checks = 0;
DROP TABLE IF EXISTS cars;
SET foreign_key_checks = 1;
CREATE TABLE cars (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    dealer_id INT UNSIGNED NULL,
    mark VARCHAR(255) NULL,
    model VARCHAR(255) NULL,
    year INTEGER NULL,
    country VARCHAR(2) NULL,
    power INTEGER NULL,
    sold BOOLEAN
);
INSERT INTO cars (id, dealer_id, mark, model, year, country, power, sold)
VALUES
    (1, 1, 'Toyota', 'Camry', 2012, 'JP', 139, FALSE),
    (2, 23, 'Mazda', 'Demio', 2004, 'JP', 113, FALSE),
    (3, 7, 'ВАЗ', '2110', 2010, 'RU', 79, TRUE),
    (4, NULL, 'Nissan', 'Almera', 2016, 'JP', 130, FALSE),
    (5, 1, 'Nissan', 'Patrol', 2014, 'JP', 200, FALSE),
    (6, 23, 'Reno', 'Logan', 2009, 'FR', 87, TRUE),
    (7, 7, 'Lada', 'Priora', 2017, 'RU', 78, FALSE),
    (8, 67, 'Reno', 'Duster', 2011, 'FR', 143, FALSE),
    (9, 13, 'Hyundai', 'Solaris', 2010, 'KR', 98, FALSE),
    (10, 5, 'Nissan', 'Juke', 2016, 'JP', 120, FALSE),
    (11, 2, 'Reno', 'Logan', 2011, 'FR', 90, FALSE),
    (12, NULL, 'Nissan', 'Sunny', 1990, 'JP', 67, FALSE),
    (13, 1, 'Nissan', 'Juke', 2012, 'JP', 125, TRUE),
    (14, 5, 'Nissan', 'Juke', 2009, 'JP', 120, FALSE),
    (15, 23, 'Nissan', 'Almera', 2017, 'JP', 113, FALSE);
SELECT mark, model, year, power
FROM cars
where sold = FALSE and year >= 2010 AND year <= 2016 and dealer_id is not NULL
ORDER BY power;