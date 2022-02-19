SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS calendar;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    is_doctor BOOLEAN NULL
);
INSERT INTO users (id, first_name, last_name, is_doctor)
VALUES
    (1, 'Виктор', 'Алтушев', False),
    (2, 'Светлана', 'Иванова', False),
    (3, 'Елена', 'Абрамова', False),
    (4, 'Василиса', 'Кац', True),
    (5, 'Антон', 'Сорокин', False),
    (6, 'Алёна', 'Алясева', False),
    (7, 'Лиана', 'Белая', True),
    (8, 'Карина', 'Белая', False),
    (9, 'Анастасия', 'Дейчман', True),
    (10, 'Юлия', 'Фёдорова', False);
CREATE TABLE calendar (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    doctor_id INTEGER NULL,
    client_id INTEGER NULL,
    visit_date DATETIME NULL
);
INSERT INTO calendar (doctor_id, client_id, visit_date)
VALUES
    (4, 1, '2017-04-16 11:00:00'),
    (4, 2, '2017-04-17 12:00:00'),
    (7, 6, '2017-04-16 15:30:00'),
    (9, 8, '2017-04-17 10:00:00'),
    (4, 7, '2017-04-17 13:00:00'),
    (4, 5, '2017-04-17 14:00:00'),
    (7, 1, '2017-04-17 14:00:00'),
    (9, 2, '2017-04-17 13:30:00'),
    (9, 3, '2017-04-17 12:30:00'),
    (9, 5, '2017-04-18 12:00:00'),
    (4, 6, '2017-04-17 15:30:00'),
    (4, 6, '2017-04-17 16:30:00'),
    (4, 8, '2017-04-17 17:00:00'),
    (7, 2, '2017-04-20 12:30:00'),
    (9, 3, '2017-05-17 14:00:00');

INSERT INTO
    calendar (doctor_id, client_id, visit_date)
VALUES
    (
        (select id from users where first_name = 'Лиана' and last_name = 'Белая'),
        (select id from users where first_name = 'Светлана' and last_name = 'Иванова'),
        '2017-05-20 12:30:00'
    ),
    (
        (select id from users where first_name = 'Лиана' and last_name = 'Белая'),
        (select id from users where first_name = 'Светлана' and last_name = 'Иванова'),
        '2017-05-21 12:30:00'
    ),
    (
        (select id from users where first_name = 'Лиана' and last_name = 'Белая'),
        (select id from users where first_name = 'Светлана' and last_name = 'Иванова'),
        '2017-05-22 12:30:00'
    ),
    (
        (select id from users where first_name = 'Лиана' and last_name = 'Белая'),
        (select id from users where first_name = 'Светлана' and last_name = 'Иванова'),
        '2017-05-23 12:30:00'
    ),
    (
        (select id from users where first_name = 'Лиана' and last_name = 'Белая'),
        (select id from users where first_name = 'Светлана' and last_name = 'Иванова'),
        '2017-05-24 12:30:00'
    );
select * from calendar;