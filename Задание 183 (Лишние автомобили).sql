SET foreign_key_checks = 0;
DROP TABLE IF EXISTS cars;
SET foreign_key_checks = 1;
CREATE TABLE cars (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NULL,
    year INTEGER NULL,
    country VARCHAR(2) NULL,
    power INTEGER NULL
);
INSERT INTO cars (id, name, year, country, power)
VALUES
    (1, 'Toyota Camry', 2012, 'JP', 139),
    (2, 'Mazda Demio', 2004, 'JP', 113),
    (3, 'ВАЗ 2110', 2010, 'RU', 79),
    (4, 'Nissan Almera', 2016, 'JP', 130),
    (5, 'Nissan Juke', 2016, 'JP', 120),
    (6, 'Reno Logan', 2009, 'FR', 87),
    (7, 'Lada Priora', 2017, 'RU', 78),
    (8, 'Reno Duster', 2011, 'FR', 143),
    (9, 'Hyundai Solaris', 2010, 'KR', 98),
    (10, 'Nissan Patrol', 2014, 'JP', 200);

delete from cars where country = 'KR' or power <= 80;
delete from cars where country = 'JP' and (power <= 80 or power >= 130);
TRUNCATE TABLE cars;
select * from cars;