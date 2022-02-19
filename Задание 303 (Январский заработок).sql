SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS orders;
SET
    foreign_key_checks = 1;
CREATE TABLE orders (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    date DATETIME NOT NULL,
    amount INTEGER NULL,
    STATUS VARCHAR(50) NULL
);
INSERT INTO
    orders (id, user_id, date, amount, STATUS)
VALUES
    (1, 138, '2014-01-23 17:04:04', 4500, 'success'),
    (2, 491, '2014-03-12 12:12:43', 700, 'success'),
    (3, 9841, '2014-12-31 08:53:25', 1240, 'success'),
    (4, 174, '2015-01-04 18:23:09', 500, 'success'),
    (5, 19, '2015-01-04 18:25:27', 8700, 'cancelled'),
    (6, 792, '2015-01-12 09:23:14', 1350, 'success'),
    (7, 8817, '2015-01-14 17:16:39', 600, 'success'),
    (8, 49184, '2015-02-01 13:32:17', 680, 'success'),
    (9, 145, '2015-02-16 14:44:05', 1400, 'success'),
    (10, 95, '2015-02-28 02:00:47', 4300, 'cancelled'),
    (11, 481, '2015-03-12 08:30:23', 8000, 'success'),
    (12, 7619, '2015-04-01 13:04:47', 980, 'success'),
    (13, 45, '2015-04-14 23:21:25', 1600, 'success');
SELECT
    sum(amount) AS income
FROM
    orders
WHERE
    STATUS = 'success'
    AND YEAR(date) = 2015
    AND MONTH(date) = 1;