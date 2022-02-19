SET foreign_key_checks = 0;
DROP TABLE IF EXISTS countries;
DROP TABLE IF EXISTS cities;
SET foreign_key_checks = 1;
CREATE TABLE countries (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    pw VARCHAR(50) NULL
);
INSERT INTO countries (id, name, pw)
VALUES
    (1, 'Россия', 'Europe,Asia'),
    (2, 'Мексика', 'America'),
    (3, 'Украина', 'Europe'),
    (4, 'Франция', 'Europe'),
    (5, 'США', 'America'),
    (6, 'Италия', 'Europe'),
    (7, 'Япония', 'Asia'),
    (8, 'Чехия', 'Europe'),
    (9, 'Чили', 'America'),
    (10, 'Германия', 'Europe'),
    (11, 'Канада', 'America'),
    (12, 'Беларусь', 'Europe'),
    (13, 'Китай', 'Asia'),
    (14, 'Казахстан', 'Asia'),
    (15, 'Австралия', 'Australia'),
    (16, 'Нидерланды', 'Europe');
CREATE TABLE cities (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    country INTEGER NULL,
    population INTEGER NULL
);
INSERT INTO cities (id, name, country, population)
VALUES
    (1, 'Москва', 1, 12506468),
    (2, 'Нью-Йорк', 5, 8405837),
    (3, 'Минск', 12, 1974800),
    (4, 'Гамбург', 10, 1803752),
    (5, 'Санкт-Петербург', 1, 5351935),
    (6, 'Шанхай', 13, 24632000),
    (7, 'Саратов', 1, 845300),
    (8, 'Берлин', 10, 3670999),
    (9, 'Марсель', 4, 864323),
    (10, 'Амстердам', NULL, 848861),
    (11, 'Торонто', 11, 2503281),
    (12, 'Вашингтон', NULL, 658893),
    (13, 'Львов', 3, 728350),
    (14, 'Прага', 8, 1267449),
    (15, 'Киев', 3, 2925760);

select co.name as country, ci.name as city
    from countries as co
    left join cities as ci
    on co.id = ci.country
    UNION
    select co.name as country, ci.name as city
    from countries as co
    right join cities as ci
    on co.id = ci.country
    order by country, city;