SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    birthday DATE NULL
);
INSERT INTO users (id, first_name, last_name, birthday)
VALUES
    (1, 'Дмитрий', 'Петров', '2000-03-14'),
    (2, 'Ольга', 'Антонова', '1999-12-01'),
    (3, 'Сергей', 'Васильев', '2002-02-20'),
    (4, 'Иван', 'Степаниденко', '2004-03-07'),
    (5, 'Алена', 'Шикова', '1999-08-17'),
    (6, 'Василина', 'Парамнова', '2000-10-10'),
    (7, 'Иван', 'Пузаков', '2002-02-20'),
    (8, 'Алина', 'Антонова', '2002-01-01');
UPDATE users set first_name='Дмитрий' WHERE id=7;
SELECT * FROM users;