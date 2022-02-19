SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    birthday DATE NULL,
    pers_info BOOL NULL
);
INSERT INTO users (id, first_name, last_name, birthday, pers_info)
VALUES
    (1, 'Дмитрий', 'Петров', '2000-03-14', TRUE),
    (2, 'Ольга', 'Антонова', '1999-12-01', FALSE),
    (3, 'Сергей', 'Васильев', '2002-02-20', NULL),
    (4, 'Констанин', 'Степаниденко', '2004-03-07', TRUE),
    (5, 'Алена', 'Шикова', '1999-08-17', TRUE),
    (6, 'Василина', 'Парамонова', '2000-10-10', FALSE),
    (7, 'Александр', 'Пузаков', '2002-02-22', NULL),
    (8, 'Алина', 'Антонова', '2002-01-01', FALSE);
SELECT id, first_name, last_name, birthday 
from users
WHERE pers_info = False or pers_info is NULL;