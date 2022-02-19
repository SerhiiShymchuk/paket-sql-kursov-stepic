SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS calendar;
SET
    foreign_key_checks = 1;
CREATE TABLE calendar (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    visit_date DATETIME NULL
);
INSERT INTO
    calendar (id, user_id, visit_date)
VALUES
    (1, 1, '2017-05-13 11:00:00'),
    (2, 5, '2017-05-13 12:00:00'),
    (3, 145, '2017-05-13 15:30:00'),
    (4, 147, '2017-05-14 10:00:00'),
    (5, 276, '2017-05-14 12:00:00'),
    (6, 18, '2017-05-14 13:00:00'),
    (7, 7, '2017-05-14 14:00:00'),
    (8, 1873, '2017-05-14 15:30:00'),
    (9, 18, '2017-05-14 16:30:00'),
    (10, 147, '2017-05-16 11:00:00'),
    (11, 971, '2017-05-16 12:30:00'),
    (12, 91, '2017-05-16 15:30:00'),
    (13, 1355, '2017-06-14 11:00:00'),
    (14, 987, '2017-06-14 12:30:00'),
    (15, 34, '2017-06-14 14:00:00');
UPDATE
    calendar
SET
    visit_date = DATE_ADD(visit_date, INTERVAL '1:30' HOUR_MINUTE)
WHERE
    visit_date >= '2017-05-14 13:00:00';
SELECT
    *
FROM
    calendar;