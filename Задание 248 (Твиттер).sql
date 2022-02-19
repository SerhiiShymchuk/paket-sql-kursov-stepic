SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS twitts;
SET
    foreign_key_checks = 1;
CREATE TABLE twitts (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    message VARCHAR(140) NOT NULL
);
ALTER TABLE
    twitts
MODIFY
    message VARCHAR(280) NOT NULL;
DESC twitts;