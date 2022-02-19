SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET
    foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(50) NULL,
    passport VARCHAR(10) NULL
);
INSERT INTO
    users (id, email, passport)
VALUES
    (1, 'user1@domain.com', '2301148145'),
    (2, 'user2@domain.com', '3295409144'),
    (3, 'user3@domain.com', '3206145694'),
    (4, 'user4@domain.com', NULL),
    (5, 'user5@domain.com', '3515408145'),
    (6, 'user6@domain.com', '8714881511'),
    (7, 'user7@domain.com', '4515009184'),
    (8, 'user8@domain.com', NULL),
    (9, 'user9@domain.com', '2300081400');
SELECT
    id,
    LEFT(passport, 4) AS series,
    RIGHT(passport, 6) AS number
FROM
    users
WHERE
    passport IS NOT NULL;