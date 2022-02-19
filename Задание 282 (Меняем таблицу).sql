SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET
    foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    age INTEGER NULL
);
INSERT INTO
    users (id, name, age)
VALUES
    (1, 'Вероника Петрова', 20),
    (2, 'Светлана Иванова', 17),
    (3, 'Елена Абрамова', 18),
    (4, 'Василиса Кац', 15),
    (5, 'Алёна Сорокина', 22),
    (6, 'Алёна Федькова', 28),
    (7, 'Лиана Сорокин', 21),
    (8, 'Карина Белая', 30),
    (9, 'Анастасия Дейчман', 16),
    (10, 'Юлия Фёдорова', 25);
ALTER TABLE
    users
ADD
    COLUMN first_name VARCHAR(50) DEFAULT '',
ADD
    COLUMN last_name VARCHAR(50) DEFAULT '';
UPDATE
    users
SET
    first_name = trim(REGEXP_substr(name, '[а-яА-Яё]+ ')),
    last_name = trim(REGEXP_substr(name, ' [а-яА-Яё]+'));
ALTER TABLE
    users DROP COLUMN name;
SELECT
    *
FROM
    users;