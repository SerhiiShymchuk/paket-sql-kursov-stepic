SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    age INTEGER NULL,
    activity_date DATETIME NULL
);
INSERT INTO users (id, first_name, last_name, age, activity_date)
VALUES
    (1, 'Дмитрий', 'Федьков', 18, '2018-04-08 12:34:41'),
    (2, 'Светлана', 'Иванова', 30, '2018-04-08 12:31:16'),
    (3, 'Никита', 'Трутнев', 17, '2017-01-12  08:00:03'),
    (4, 'Денис', 'Кац', 22, '2018-03-30 23:57:11'),
    (5, 'Алена', 'Сорокина', 16, '2018-04-01 00:10:23'),
    (6, 'Василий', 'Федьков', 44, '2017-12-23 18:36:45'),
    (7, 'Ярослав', 'Сорокин', 17, '2018-04-08 12:31:18'),
    (8, 'Денис', 'Белый', 23, '2018-04-08 12:36:17'),
    (9, 'Анатолий', 'Дейчман', 21, '2018-04-08 11:22:34'),
    (10, 'Юлия', 'Фёдорова', 29, '2018-04-07 12:34:42'),
    (11, 'Андрей', 'Ройзман', 30, '2018-04-08 12:35:09'),
    (12, 'София', 'Турыгина', 15, '2018-04-05 07:12:41'),
    (13, 'Анастасия', 'Татаренкова', 21, '2018-04-08 12:31:17'),
    (14, 'Валерий', 'Редько', 29, '2018-04-08 12:34:59');
SELECT
    count(*) AS users
FROM
    users
WHERE
    activity_date BETWEEN DATE_ADD('2018-04-08 12:36:17', INTERVAL -5 MINUTE)
    AND '2018-04-08 12:36:17';