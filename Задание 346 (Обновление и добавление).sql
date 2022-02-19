SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS users_details;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    age INTEGER NULL
);
INSERT INTO users (id, first_name, last_name, age)
VALUES
    (1, 'Вероника', 'Петрова', 20),
    (2, 'Светлана', 'Иванова', 17),
    (3, 'Елена', 'Абрамова', 18),
    (4, 'Василиса', 'Кац', 15),
    (5, 'Алёна', 'Сорокина', 22),
    (6, 'Алёна', 'Федькова', 28),
    (7, 'Лиана', 'Сорокин', 21),
    (8, 'Карина', 'Белая', 30),
    (9, 'Анастасия', 'Дейчман', 16),
    (10, 'Юлия', 'Фёдорова', 25);
ALTER TABLE users AUTO_INCREMENT = 15;
INSERT INTO users (first_name, last_name) VALUES ('Антон', 'Дмитриев');
CREATE TABLE users_details (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    bio VARCHAR(50) NULL
);
INSERT INTO users_details (id, bio)
VALUES
    (1, 'Биография Вероники Петровой'),
    (2, 'Биография Светланы Ивановой'),
    (3, 'Биография Елены Абрамовой'),
    (4, 'Биография Василисы Кац'),
    (5, 'Биография Алёны Сорокиной'),
    (6, 'Биография Алёны Федьковой'),
    (7, 'Биография Лианы Сорокиной'),
    (8, 'Биография Карины Белой'),
    (9, 'Биография Анастасии Дейчман'),
    (10, 'Биография Юлии Фёдоровой');
ALTER TABLE users_details AUTO_INCREMENT = 21;
INSERT INTO
    users_details (id, bio)
VALUES
    (LAST_INSERT_ID(), 'Антон родился в 1993 году');
UPDATE users_details
SET bio = 'Василиса Кац родилась в 1995 году'
WHERE id = 4;
-- SELECT *
-- FROM
--     users, users_details
-- WHERE
--     users.id = users_details.id;