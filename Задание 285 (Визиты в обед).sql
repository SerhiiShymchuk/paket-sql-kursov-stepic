SET foreign_key_checks = 0;
DROP TABLE IF EXISTS visits;
SET foreign_key_checks = 1;
CREATE TABLE visits (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_id INTEGER NULL,
    date DATETIME NULL
);
INSERT INTO visits (id, user_id, date)
VALUES
    (1, 1, '2017-06-21 11:35:17'),
    (2, 5, '2017-06-21 12:12:02'),
    (3, 145, '2017-06-21 15:43:18'),
    (4, 147, '2017-06-22 10:01:00'),
    (5, 276, '2017-06-22 12:00:00'),
    (6, 18, '2017-06-22 12:04:17'),
    (7, 7, '2017-06-22 12:59:59'),
    (8, 1873, '2017-06-22 13:00:00'),
    (9, 18, '2017-06-22 13:00:01'),
    (10, 87, '2017-06-22 14:45:54'),
    (11, 147, '2017-06-24 11:35:01'),
    (12, 971, '2017-06-24 12:50:44'),
    (13, 91, '2017-06-24 11:35:17'),
    (14, 1355, '2017-07-22 11:44:41'),
    (15, 987, '2017-07-22 12:15:07'),
    (16, 34, '2017-07-22 14:00:29');
select * from visits
where date >= '2017-06-22 12:00:00' and date <= '2017-06-22 12:59:59'
order by date desc;