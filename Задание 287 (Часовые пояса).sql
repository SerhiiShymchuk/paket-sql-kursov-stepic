SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS visits;
SET
    foreign_key_checks = 1;
CREATE TABLE visits (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    date DATETIME NULL
);
INSERT INTO
    visits (id, user_id, date)
VALUES
    (1, 1, '2017-06-21 11:35:17'),
    (2, 145, '2017-06-21 15:43:18'),
    (3, 5, '2017-06-21 12:12:02'),
    (4, 34, '2017-07-22 14:00:29'),
    (5, 147, '2017-06-22 10:01:00'),
    (6, 276, '2017-06-22 12:00:00'),
    (7, 87, '2017-06-22 23:12:04'),
    (8, 18, '2017-06-22 12:04:17'),
    (9, 1873, '2017-06-22 13:00:00'),
    (10, 7, '2017-06-22 12:59:59'),
    (11, 987, '2017-07-22 12:15:07'),
    (12, 18, '2017-06-22 13:00:01'),
    (13, 91, '2017-06-24 11:35:17'),
    (14, 147, '2017-06-24 11:35:01'),
    (15, 971, '2017-06-24 12:50:44'),
    (16, 1355, '2017-07-22 11:44:41');
SELECT
    id,
    user_id,
    date_format(
        convert_tz(date, '+00:00', '+3:00'),
        '%d.%m.%y %h:%i'
    ) AS visit_date
FROM
    visits
ORDER BY
    date;