SET foreign_key_checks = 0;
DROP TABLE IF EXISTS deals;
SET foreign_key_checks = 1;
CREATE TABLE deals (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    client_id INTEGER NULL,
    date DATETIME NULL,
    amount INTEGER NULL
);
INSERT INTO deals (id, client_id, date, amount)
VALUES
    (1, 174, '2015-01-04', 24500),
    (2, 19, '2015-01-04', 62000),
    (3, 792, '2015-01-12', 135000),
    (4, 8817, '2015-01-14', 60000),
    (5, 138, '2015-01-23', 75000),
    (6, 9841, '2015-01-31', 35000),
    (7, 49184, '2015-02-01', 6800),
    (8, 145, '2015-02-16', 12000),
    (9, 95, '2015-02-28', 75000),
    (10, 481, '2015-03-12', 210000),
    (11, 491, '2015-03-12', 35300),
    (12, 7619, '2015-04-01', 78000),
    (13, 45, '2015-04-14', 112000),
    (14, 45, '2015-04-14', 49000),
    (15, 45, '2015-04-14', 84000);

select year(date) as year, month(date) as month, sum(amount) as amount
    from deals
    group by year, month
    having amount > 300000;