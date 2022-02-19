SET foreign_key_checks = 0;
DROP TABLE IF EXISTS cars;
SET foreign_key_checks = 1;
CREATE TABLE cars (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NULL,
    year INTEGER NULL
);
INSERT INTO cars (id, name, year)
VALUES
    (1, 'Toyota Camry', 2012),
    (2, 'Mazda Demio', 2004),
    (3, 'ВАЗ 2110', 2010),
    (4, 'Nissan Almera', 2016),
    (5, 'Nissan Juke', 2016),
    (6, 'Reno Logan', 2009),
    (7, 'Lada Priora', 2017),
    (8, 'Reno Duster', 2011),
    (9, 'Hyundai Solaris', 2010),
    (10, 'Nissan Patrol', 2014);

delete from cars WHERE year <= 2010;
select * from cars