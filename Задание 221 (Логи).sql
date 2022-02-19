SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS LOGS;
SET
    foreign_key_checks = 1;
CREATE TABLE LOGS (
    date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    browser VARCHAR(500) NOT NULL DEFAULT '',
    is_bot bool NOT NULL DEFAULT false
);
INSERT INTO
    LOGS (date, browser, is_bot)
VALUES
    ('2018-03-19 19:50:01', 'Chrome 64.0.1.417', DEFAULT),
    (
        '2018-03-19 19:55:11',
        'Firefox 55 (yandex bot)',
        TRUE
    ),
    ('2018-03-19 19:56:12', 'Chrome 63.0.0.471', DEFAULT);
SELECT
    *
FROM
    LOGS;