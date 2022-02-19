SET foreign_key_checks = 0;
DROP TABLE IF EXISTS managers;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS calls;
SET foreign_key_checks = 1;
CREATE TABLE managers (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL
);
INSERT INTO managers (id, first_name, last_name)
VALUES
    (1, 'Антон', 'Федоров'),
    (2, 'Валентин', 'Гаврилов'),
    (3, 'Александра', 'Калинина'),
    (4, 'Наталья', 'Свердлова');
CREATE TABLE clients (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    company_id INTEGER NULL
);
INSERT INTO clients (id, first_name, last_name, company_id)
VALUES
    (1, 'Виктор', 'Алтушев', 1),
    (2, 'Светлана', 'Иванова', 2),
    (3, 'Елена', 'Абрамова', 2),
    (4, 'Василиса', 'Кац', 3),
    (5, 'Антон', 'Сорокин', NULL),
    (6, 'Алёна', 'Алясева', 5),
    (7, 'Лиана', 'Белая', 4),
    (8, 'Карина', 'Белая', 2),
    (9, 'Анастасия', 'Дейчман', NULL),
    (10, 'Юлия', 'Фёдорова', 1);
CREATE TABLE companies (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
INSERT INTO companies (id, name)
VALUES
    (1, 'Сигма плюс'),
    (2, 'Cloud Computing'),
    (3, 'ИП Кац В. И.'),
    (4, 'ООО Вектор'),
    (5, 'Пластиковые окна');
CREATE TABLE calls (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    client_id INTEGER NULL,
    manager_id INTEGER NULL,
    date DATETIME NULL,
    duration_sec INTEGER NULL
);
INSERT INTO calls (id, client_id, manager_id, date, duration_sec)
VALUES
    (1, 5, 1, '2018-04-04 12:30:12', 78),
    (2, 4, 2, '2018-04-04 12:35:11', 123),
    (3, 2, 3, '2018-04-04 14:50:00', 50),
    (4, 8, 4, '2018-04-04 17:30:24', 17),
    (5, 8, 4, '2018-04-05 08:12:51', 389),
    (6, 9, 2, '2018-04-05 09:09:34', 56),
    (7, 2, 1, '2018-04-05 11:01:08', 245),
    (8, 1, 2, '2018-04-05 12:04:01', 145),
    (9, 5, 1, '2018-04-05 16:42:17', 90),
    (10, 3, 4, '2018-04-06 10:12:28', 95),
    (11, 10, 3, '2018-04-06 14:10:54', 58),
    (12, 7, 4, '2018-04-06 12:56:33', 129),
    (13, 2, 2, '2018-04-06 12:12:17', 144),
    (14, 3, 1, '2018-04-06 12:31:15', 780),
    (15, 3, 3, '2018-04-06 14:13:26', 412),
    (16, 1, 3, '2018-04-06 17:22:44', 129),
    (17, 5, 1, '2018-04-07 08:00:32', 76),
    (18, 7, 2, '2018-04-07 09:11:14', 53),
    (19, 2, 3, '2018-04-07 12:07:55', 145),
    (20, 1, 4, '2018-04-07 16:24:28', 201);

select 
        m.first_name, 
        m.last_name, 
        avg(calls.duration_sec) as avg_duration
    from calls
    left join clients on clients.id = calls.client_id 
    left join managers as m on m.id = calls.manager_id
    left join companies on companies.id = clients.company_id
    where companies.name = 'Cloud Computing'
    group by m.id
    order by avg_duration desc;

