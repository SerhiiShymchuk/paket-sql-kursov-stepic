SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET
    foreign_key_checks = 1;
CREATE TABLE users (
    id int UNSIGNED NOT NULL,
    email VARCHAR(100) NOT NULL
);
INSERT INTO
    users (id, email)
VALUES
    (1, 'user1@domain.com'),
    (2, 'user2@domain.com'),
    (3, 'user3@domain.com'),
    (4, 'user4@domain.com');
SELECT
    *
FROM
    users;