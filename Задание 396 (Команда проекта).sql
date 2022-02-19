SET foreign_key_checks = 0;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS users_rp;
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
    (7, 'Антон', 'Белый'),
    (8, 'Игорь', 'Маф'),
    (9, 'Анастасия', 'Дейчман'),
    (10, 'Александр', 'Дмитриев');
CREATE TABLE projects (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
INSERT INTO projects (id, name)
VALUES
    (1, 'Интернет-магазин детский'),
    (2, 'Сайт клиники'),
    (3, 'ИС пицерии'),
    (4, 'Сайт оконный'),
    (5, 'Сайт охрана'),
    (6, 'Внутренний проект');
CREATE TABLE users_rp (
    user_id INTEGER NULL,
    role_id INTEGER NULL,
    project_id INTEGER NULL
);
INSERT INTO users_rp (user_id, role_id, project_id)
VALUES
    (1, 2, 2),
    (2, 1, 4),
    (3, 2, 4),
    (4, 5, NULL),
    (5, 3, 2),
    (6, 4, 1),
    (7, 3, 1),
    (8, 3, 4),
    (1, 1, 1),
    (3, 4, NULL),
    (5, 1, 2);

SELECT  users.id, users.first_name, users.last_name, roles.name as role
    from users
    join users_rp on users_rp.user_id = users.id
    join roles on users_rp.role_id = roles.id
    left join projects on users_rp.project_id = projects.id
    where projects.name = 'Сайт оконный'
    order by users.last_name;
