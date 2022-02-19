SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET
    foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    is_admin BOOL NOT NULL DEFAULT False
);
ALTER TABLE
    users
ADD
    COLUMN birthday date NULL DEFAULT NULL,
ADD
    COLUMN last_visit DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD
    COLUMN is_active bool NOT NULL DEFAULT TRUE,
ADD
    COLUMN experience MEDIUMINT UNSIGNED NOT NULL DEFAULT 0;
DESC users;