SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS users_p;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    age INTEGER NULL,
    date_joined DATETIME NULL
);
INSERT INTO users (id, first_name, last_name, age, date_joined)
VALUES
    (1, 'Дмитрий', 'Федьков', 18, '2015-04-08 12:34:41'),
    (2, 'Светлана', 'Иванова', 30, '2015-04-08 12:31:16'),
    (3, 'Никита', 'Трутнев', 17, '2016-01-12  08:00:03'),
    (4, 'Денис', 'Кац', 22, '2016-03-30 23:57:11'),
    (5, 'Алена', 'Сорокина', 16, '2016-04-01 00:10:23'),
    (6, 'Василий', 'Федьков', 44, '2016-12-23 18:36:45'),
    (7, 'Ярослав', 'Сорокин', 17, '2017-04-08 12:31:18'),
    (8, 'Денис', 'Белый', 23, '2017-04-08 12:36:17'),
    (9, 'Анатолий', 'Дейчман', 21, '2017-04-08 11:22:34'),
    (10, 'Юлия', 'Фёдорова', 29, '2017-04-07 12:34:42'),
    (11, 'Андрей', 'Ройзман', 30, '2017-04-08 12:35:09'),
    (12, 'София', 'Турыгина', 15, '2017-04-05 07:12:41'),
    (13, 'Анастасия', 'Татаренкова', 21, '2017-03-12 08:00:23'),
    (14, 'Валерий', 'Редько', 29, '2017-04-08 12:34:59');
CREATE TABLE users_p (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    series VARCHAR(50) NULL,
    number VARCHAR(50) NULL
);
INSERT INTO users_p (id, series, number)
VALUES
    (1, '3205', '847414'),
    (2, '4582', '748294'),
    (3, '3209', '184851'),
    (4, '5514', '981455'),
    (5, '3201', '184755'),
    (6, '5614', '194710'),
    (7, '9831', '184751'),
    (8, '4561', '856194'),
    (9, '3135', '817414'),
    (10, '3276', '174651'),
    (11, '4532', '249584'),
    (12, '1401', '736144'),
    (13, '4104', '194714'),
    (14, '1409', '184619');

select users.id, users.first_name, users.last_name
from users, users_p
where users.id = users_p.id and users_p.series like '32%' and users.date_joined > '2016-01-01'
order by users.last_name;