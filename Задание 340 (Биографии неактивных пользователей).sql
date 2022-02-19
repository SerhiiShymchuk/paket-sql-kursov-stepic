SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS users_details;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    active BOOLEAN NULL
);
INSERT INTO users (id, first_name, last_name, active)
VALUES
    (1, 'Виктор', 'Алтушев', True),
    (2, 'Светлана', 'Иванова', True),
    (3, 'Елена', 'Абрамова', True),
    (4, 'Василиса', 'Кац', True),
    (5, 'Антон', 'Сорокин', True),
    (6, 'Алёна', 'Алясева', False),
    (7, 'Лиана', 'Белая', True),
    (8, 'Карина', 'Белая', True),
    (9, 'Анастасия', 'Дейчман', True),
    (10, 'Юлия', 'Фёдорова', False);
CREATE TABLE users_details (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    bio VARCHAR(50) NULL,
    FOREIGN KEY (id) REFERENCES users(id)
    ON DELETE CASCADE
);
INSERT INTO users_details (id, bio)
VALUES
    (1, 'Биография Виктора Алтушева'),
    (2, 'Биография Светланы Ивановой'),
    (3, 'Биография Елены Абрамовой'),
    (4, 'Биография Василисы Кац'),
    (5, 'Биография Алёны Сорокиной'),
    (6, 'Биография Алёны Федьковой'),
    (7, 'Биография Лианы Сорокиной'),
    (8, 'Биография Карины Белой'),
    (9, 'Биография Анастасии Дейчман'),
    (10, 'Биография Юлии Фёдоровой');

delete from users_details
    using users join users_details
    where users.id = users_details.id and users.active = false;
