SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    birthday DATE NULL,
    salary INTEGER NULL
);
INSERT INTO users (id, first_name, last_name, birthday, salary)
VALUES
    (1, 'Дмитрий', 'Петров', '2000-03-14', 17000),
    (2, 'Ольга', 'Антонова', '1999-12-01', 20000),
    (3, 'Сергей', 'Васильев', '2002-02-20', 15000),
    (4, 'Константин', 'Степаниденко', NULL, 35000),
    (5, 'Алена', 'Шикова', '1999-08-17', 40000),
    (6, 'Василина', 'Парамонова', '2000-10-10', 18500),
    (7, 'Александр', 'Пузаков', '2002-02-20', 21000),
    (8, 'Алина', 'Антонова', '2002-01-01', 55000),
    (9, 'Антон', 'Пепеляев', '1992-07-12', 60000);

update users set salary = salary * 1.1 where salary <= 20000;
select * from users;