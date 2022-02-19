SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET
    foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL,
    name VARCHAR(20) NOT NULL DEFAULT '',
    is_admin BOOL NOT NULL DEFAULT False
);
ALTER TABLE
    users CHANGE name first_name VARCHAR(20) NOT NULL DEFAULT '';
ALTER TABLE
    users
ADD
    COLUMN last_name VARCHAR(20) NOT NULL DEFAULT '';
DESC users;