SET foreign_key_checks = 0;
DROP TABLE IF EXISTS transactions;
SET foreign_key_checks = 1;
CREATE TABLE transactions (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date DATETIME NULL,
    amount NUMERIC(10, 2) NULL,
    direction VARCHAR(50) NULL,
    no_tax BOOLEAN NULL
);
INSERT INTO transactions (id, date, amount, direction, no_tax)
VALUES
    (1, '2017-02-01 11:35:17', '1100.50', 'in', False),
    (2, '2017-02-03 15:43:18', '1200', 'in', True),
    (3, '2017-02-14 12:12:02', '1200', 'in', False),
    (4, '2017-02-27 14:00:29', '1300', 'out', False),
    (5, '2017-03-01 10:01:00', '700', 'out', False),
    (6, '2017-03-04 12:00:00', '850.43', 'in', True),
    (7, '2017-03-06 23:12:04', '400.40', 'in', False),
    (8, '2017-03-06 12:04:17', '1400', 'in', False),
    (9, '2017-03-07 13:00:00', '4400', 'out', False),
    (10, '2017-03-14 12:59:59', '3000', 'in', False),
    (11, '2017-03-25 12:15:07', '780.20', 'in', False),
    (12, '2017-03-26 13:00:01', '1900', 'in', True),
    (13, '2017-04-24 11:35:17', '250', 'out', False),
    (14, '2017-04-24 11:35:01', '1100', 'in', True),
    (15, '2017-04-27 12:50:44', '5000', 'out', False),
    (16, '2017-04-28 11:44:41', '790', 'in', False);
SELECT
    round(sum(amount * 0.06)) AS tax
FROM
    transactions
WHERE
    direction = 'in'
    AND no_tax = false
    AND year(date) = 2017
    AND MONTH(date) <= 4;