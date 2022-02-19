SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET
    foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    birthday DATE NULL
);
INSERT INTO
    users (id, first_name, last_name, birthday)
VALUES
    (1, 'Вероника', 'Петрова', '1986-04-30'),
    (2, 'Светлана', 'Иванова', '1990-01-22'),
    (3, 'Елена', 'Абрамова', '1994-05-01'),
    (4, 'Василиса', 'Кац', '1991-12-12'),
    (5, 'Алёна', 'Сорокина', '1994-01-07'),
    (6, 'Алёна', 'Федькова', '1989-02-17'),
    (7, 'Лиана', 'Сорокин', '1997-04-29'),
    (8, 'Карина', 'Белая', '1994-06-12'),
    (9, 'Анастасия', 'Дейчман', '1994-06-11'),
    (10, 'Юлия', 'Фёдорова', '1992-02-18');
SELECT
    id,
    first_name,
    last_name,
    DATE_FORMAT(birthday, '%d.%m.%Y') AS user_birthday
FROM
    users
WHERE
    year(birthday) = 1994
ORDER BY
    birthday;