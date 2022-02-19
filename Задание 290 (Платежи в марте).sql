SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS payments;
SET
    foreign_key_checks = 1;
CREATE TABLE payments (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    date DATETIME NULL,
    amount INTEGER NULL
);
INSERT INTO
    payments (id, user_id, date, amount)
VALUES
    (1, 1, '2017-02-01 11:35:17', 1100),
    (2, 145, '2017-02-03 15:43:18', 1200),
    (3, 5, '2017-02-14 12:12:02', 1200),
    (4, 34, '2017-02-27 14:00:29', 1300),
    (5, 147, '2017-03-01 10:01:00', 700),
    (6, 276, '2017-03-04 12:00:00', 850),
    (7, 87, '2017-03-06 23:12:04', 400),
    (8, 18, '2017-03-06 12:04:17', 1400),
    (9, 1873, '2017-03-07 13:00:00', 4400),
    (10, 7, '2017-03-14 12:59:59', 3000),
    (11, 987, '2017-03-25 12:15:07', 780),
    (12, 18, '2017-03-26 13:00:01', 1900),
    (13, 91, '2017-04-24 11:35:17', 250),
    (14, 147, '2017-04-24 11:35:01', 1100),
    (15, 971, '2017-04-27 12:50:44', 5000),
    (16, 1355, '2017-04-28 11:44:41', 790);
SELECT
    id,
    user_id,
    DATE_FORMAT(date, '%d.%m.%Y %H:%m'),
    amount
FROM
    payments
WHERE
    MONTH(date) = 3
ORDER BY
    date DESC
LIMIT
    5;