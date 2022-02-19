SET foreign_key_checks = 0;
DROP TABLE IF EXISTS deals;
SET foreign_key_checks = 1;
CREATE TABLE deals (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    date DATE NULL,
    amount INTEGER NULL,
    status VARCHAR(50) NULL
);
INSERT INTO deals (id, user_id, date, amount, status)
VALUES
    (1, 1, '2015-01-04', 24500, 'closed'),
    (2, 2, '2015-01-04', 62000, 'closed'),
    (3, 3, '2015-01-12', 1350, 'closed'),
    (4, 1, '2015-01-14', 600, 'new'),
    (5, 2, '2015-01-23', 75000, 'closed'),
    (6, 3, '2015-01-31', 35000, 'closed'),
    (7, 4, '2015-02-01', 6800, 'closed'),
    (8, 1, '2015-02-16', 12000, 'closed'),
    (9, 2, '2015-02-28', 75000, 'new'),
    (10, 3, '2015-03-12', 210000, 'closed'),
    (11, 4, '2015-03-12', 35300, 'closed'),
    (12, 1, '2015-04-01', 78000, 'closed'),
    (13, 2, '2015-04-14', 112000, 'in_progress'),
    (14, 3, '2015-04-14', 49000, 'closed'),
    (15, 4, '2015-04-14', 84000, 'new');

select user_id, count(*) as deals, sum(amount) as sum_amount, max(amount)
    from deals
    where status = 'closed'
    group by user_id
    having deals >= 3;