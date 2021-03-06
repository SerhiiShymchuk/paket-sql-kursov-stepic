SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS LOGS;
SET
    foreign_key_checks = 1;
CREATE TABLE LOGS (
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    browser VARCHAR(500) NOT NULL DEFAULT '',
    is_bot BOOLEAN NOT NULL DEFAULT FALSE
);
ALTER TABLE
    LOGS
MODIFY
    date DATETIME(3) NOT NULL;
DESC LOGS;