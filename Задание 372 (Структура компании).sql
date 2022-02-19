SET foreign_key_checks = 0;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS employees;
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
    (4, 'Маркетолог');
CREATE TABLE employees (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    active BOOLEAN NULL,
    sex VARCHAR(1) NULL,
    role_id INTEGER NULL
);
INSERT INTO employees (id, first_name, last_name, active, sex, role_id)
VALUES
    (1, 'Дмитрий', 'Федьков', True, 'm', 1),
    (2, 'Светлана', 'Иванова', True, 'w', 2),
    (3, 'Никита', 'Трутнев', True, 'm', 3),
    (4, 'Денис', 'Кац', True, 'm', 3),
    (5, 'Алена', 'Сорокина', True, 'w', NULL),
    (6, 'Василий', 'Федьков', False, 'm', 1),
    (7, 'Ярослав', 'Сорокин', True, 'm', 2),
    (8, 'Денис', 'Белый', True, 'm', 2),
    (9, 'Анатолий', 'Дейчман', True, 'm', 3),
    (10, 'Юлия', 'Фёдорова', False, 'w', NULL);

select 
  rol.name, count(emp.active) as employees 
from 
  roles as rol 
  left join employees as emp 
  on rol.id = emp.role_id and emp.active = true
group by 
  rol.id
order by 
  employees desc, rol.name;