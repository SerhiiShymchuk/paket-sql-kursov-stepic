SET foreign_key_checks = 0;
DROP TABLE IF EXISTS bank_transactions;
DROP TABLE IF EXISTS cashbox_transactions;
SET foreign_key_checks = 1;
CREATE TABLE bank_transactions (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    client_id INTEGER NULL,
    date DATETIME NULL,
    amount NUMERIC(10, 2) NULL
);
CREATE TABLE cashbox_transactions (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    client_id INTEGER NULL,
    date DATETIME NULL,
    amount NUMERIC(10, 2) NULL
);
INSERT INTO bank_transactions (id, client_id, date, amount)
VALUES
    (1, 12, '2017-02-01 11:35:17', '560.00'),
    (2, 56, '2017-02-03 15:43:18', '3000.00'),
    (3, 124, '2017-02-14 12:12:02', '1400.50');
INSERT INTO cashbox_transactions (id, client_id, date, amount)
VALUES
    (1, 56, '2017-02-04 10:12:09', '74.00'),
    (2, 451, '2017-02-10 22:12:04', '871.00'),
    (3, 98, '2017-02-16 09:00:30', '1000.00');

SELECT * from bank_transactions
    UNION
    SELECT * from cashbox_transactions;