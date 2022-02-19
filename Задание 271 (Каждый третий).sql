SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    email VARCHAR(50) NULL,
    age INTEGER NULL
);
INSERT INTO users (id, first_name, last_name, email, age)
VALUES
    (1, 'Виктор', 'Алтушев', 'user1@domain.com', 20),
    (2, 'Светлана', 'Иванова', 'user2@domain.com', 17),
    (3, 'Елена', 'Абрамова', 'user3@domain.com', 18),
    (4, 'Василиса', 'Кац', 'user4@domain.com', 15),
    (5, 'Антон', 'Сорокин', 'user5@domain.com', 22),
    (6, 'Алёна', 'Алясева', 'user6@domain.com', 28),
    (7, 'Лиана', 'Белая', 'user7@domain.com', 21),
    (8, 'Карина', 'Белая', 'user8@domain.com', 30),
    (9, 'Анастасия', 'Дейчман', 'user9@domain.com', 16),
    (10, 'Юлия', 'Фёдорова', 'user10@domain.com', 25);
select id, first_name, email from users
where id % 3 = 0;