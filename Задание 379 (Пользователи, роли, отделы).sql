SET foreign_key_checks = 0;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS users;
SET foreign_key_checks = 1;
CREATE TABLE roles (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
INSERT INTO roles (id, name)
VALUES
    (1, 'Менеджер'),
    (2, 'Дизайнер'),
    (3, 'Программист'),
    (4, 'Маркетолог'),
    (5, 'Бухгалтер');
CREATE TABLE departments (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
INSERT INTO departments (id, name)
VALUES
    (1, 'Руководство'),
    (2, 'Маркетинг'),
    (3, 'Разработчики'),
    (4, 'Бухгалтерия'),
    (5, 'Дизайнеры'),
    (6, 'Продажи');
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    role_id INTEGER NULL,
    department_id INTEGER NULL
);
INSERT INTO users (id, first_name, last_name, role_id, department_id)
VALUES
    (1, 'Виктор', 'Алтушев', 1, 1),
    (2, 'Светлана', 'Иванова', 2, 5),
    (3, 'Елена', 'Абрамова', 3, 3),
    (4, 'Василиса', 'Кац', 4, 2),
    (5, 'Антон', 'Сорокин', NULL, NULL),
    (6, 'Алёна', 'Алясева', 5, NULL),
    (7, 'Лиана', 'Белая', 3, 3),
    (8, 'Карина', 'Белая', 3, 3),
    (9, 'Анастасия', 'Дейчман', NULL, 6),
    (10, 'Юлия', 'Фёдорова', 1, 3);

select u.last_name, u.first_name, r.name as role, d.name as department
    from users as u
    left join roles as r on u.role_id = r.id
    left join departments as d on u.department_id = d.id
    order by u.first_name, u.last_name;