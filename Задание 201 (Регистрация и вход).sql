USE test;
SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
SET
    foreign_key_checks = 1;
CREATE TABLE users (
    id int UNSIGNED AUTO_INCREMENT,
    PRIMARY KEY(id),
    email VARCHAR(100),
    date_joined DATE,
    last_activity DATETIME
);
INSERT INTO
    users (email, date_joined, last_activity)
VALUES
    (
        'user1@domain.com',
        '2014-12-12',
        '2016-04-08 12:34:54'
    ),
    (
        'user2@domain.com',
        '2014-12-12',
        '2017-02-13 11:46:53'
    ),
    (
        'user3@domain.com',
        '2014-12-13',
        '2017-04-04 05:12:07'
    );
SELECT
    *
FROM
    users;