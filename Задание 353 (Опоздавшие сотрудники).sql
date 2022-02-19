SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS arrival;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL
);
INSERT INTO users (id, first_name, last_name)
VALUES
    (1, 'Виктор', 'Алтушев'),
    (2, 'Светлана', 'Иванова'),
    (3, 'Елена', 'Абрамова'),
    (4, 'Василиса', 'Кац'),
    (5, 'Антон', 'Сорокин'),
    (6, 'Алёна', 'Алясева'),
    (7, 'Лиана', 'Белая'),
    (8, 'Карина', 'Белая'),
    (9, 'Анастасия', 'Дейчман'),
    (10, 'Юлия', 'Фёдорова');
CREATE TABLE arrival (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    a_date DATE NULL,
    a_time TIME NULL
);
INSERT INTO arrival (id, user_id, a_date, a_time)
VALUES
    (1, 1, '2017-03-30', '08:50:12'),
    (2, 3, '2017-03-30', '09:00:01'),
    (3, 5, '2017-03-30', '08:59:59'),
    (4, 6, '2017-03-30', '09:04:37'),
    (5, 7, '2017-03-30', '08:45:01'),
    (6, 1, '2017-03-31', '08:00:00'),
    (7, 3, '2017-03-31', '09:00:05'),
    (8, 5, '2017-03-31', '09:00:00'),
    (9, 6, '2017-03-31', '08:57:25'),
    (10, 7, '2017-03-31', '08:46:04'),
    (11, 1, '2017-04-01', '08:45:31'),
    (12, 3, '2017-04-01', '08:56:41'),
    (13, 5, '2017-04-01', '08:51:25'),
    (14, 6, '2017-04-01', '08:52:11'),
    (15, 7, '2017-05-01', '08:45:04');

select u.id, u.first_name, u.last_name
from users as u, arrival as a
where 
    u.id = a.user_id
    and year(a.a_date) = 2017
    and month(a.a_date) = 3
    and a.a_time > '09:00:00'
group by u.id;