SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET
    foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    age INTEGER NULL
);
INSERT INTO
    users (id, first_name, last_name, age)
VALUES
    (1, 'Вероника', 'Петрова', 20),
    (2, 'Светлана', 'Иванова', 17),
    (3, 'Елена', 'Абрамова', 18),
    (4, 'Василиса', 'Кац', 15),
    (5, 'Алёна', 'Сорокина', 22),
    (6, 'Алёна', 'Федькова', 28),
    (7, 'Лиана', 'Сорокина', 21),
    (8, 'Карина', 'Белая', 30),
    (9, 'Анастасия', 'Дейчман', 16),
    (10, 'Юлия', 'Фёдорова', 25),
    (11, 'Татьяна', 'Сухова', 20);
SELECT
    *
FROM
    users
WHERE
    age >= 18
    AND last_name LIKE '%ова'
ORDER BY
    age,
    last_name;