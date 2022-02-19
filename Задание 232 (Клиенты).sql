SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS clients;
SET
    foreign_key_checks = 1;
CREATE TABLE clients (
    id int UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    passport VARCHAR(10) NOT NULL,
    UNIQUE KEY email (email),
    UNIQUE KEY passport (passport)
);
DESC clients;