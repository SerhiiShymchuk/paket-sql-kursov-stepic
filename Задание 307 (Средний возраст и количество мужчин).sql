SET foreign_key_checks = 0;
DROP TABLE IF EXISTS clients;
SET foreign_key_checks = 1;
CREATE TABLE clients (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    age INTEGER NULL,
    sex VARCHAR(1) NULL
);
INSERT INTO clients (id, first_name, last_name, age, sex)
VALUES
    (1, 'Дмитрий', 'Федьков', 18, 'm'),
    (2, 'Светлана', 'Иванова', 30, 'w'),
    (3, 'Никита', 'Трутнев', 17, 'm'),
    (4, 'Денис', 'Кац', 22, 'm'),
    (5, 'Алена', 'Сорокина', 16, 'w'),
    (6, 'Василий', 'Федьков', 44, 'm'),
    (7, 'Ярослав', 'Сорокин', 17, 'm'),
    (8, 'Денис', 'Белый', 23, 'm'),
    (9, 'Анатолий', 'Дейчман', 21, 'm'),
    (10, 'Юлия', 'Фёдорова', 29, 'w'),
    (11, 'Андрей', 'Ройзман', 30, 'm'),
    (12, 'София', 'Турыгина', 31, 'w'),
    (13, 'Анастасия', 'Татаренкова', 21, 'w'),
    (14, 'Валерий', 'Редько', 29, 'm');
select floor(avg(age)) as age, count(*) as count from clients
where sex = 'm';