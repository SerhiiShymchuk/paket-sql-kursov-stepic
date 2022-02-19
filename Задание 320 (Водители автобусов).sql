SET foreign_key_checks = 0;
DROP TABLE IF EXISTS bus_logs;
SET foreign_key_checks = 1;
CREATE TABLE bus_logs (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    driver_id INTEGER NULL,
    time DATETIME NULL,
    diff INTEGER NULL
);
INSERT INTO bus_logs (id, driver_id, time, diff)
VALUES
    (1, 1, '2018-06-14 12:00:44', 0),
    (2, 2, '2018-06-14 12:01:50', 33),
    (3, 3, '2018-06-14 12:04:20', -60),
    (4, 4, '2018-06-14 12:06:28', 5),
    (5, 1, '2018-06-14 12:08:56', -10),
    (6, 2, '2018-06-14 12:10:01', -1),
    (7, 3, '2018-06-14 12:10:01', 27),
    (8, 4, '2018-06-14 12:10:01', 30),
    (9, 1, '2018-06-14 12:10:01', 22),
    (10, 2, '2018-06-14 12:10:01', 64),
    (11, 3, '2018-06-14 12:10:01', -18),
    (12, 4, '2018-06-14 12:10:01', 12),
    (13, 5, '2018-06-14 12:10:01', 30),
    (14, 2, '2018-06-14 12:10:01', -40),
    (15, 3, '2018-06-14 12:10:01', 18),
    (16, 4, '2018-06-14 12:10:01', 10),
    (17, 1, '2018-06-14 12:10:01', 12),
    (18, 2, '2018-06-14 12:10:01', 34),
    (19, 3, '2018-06-14 12:10:01', -42),
    (20, 4, '2018-06-14 12:10:01', 8),
    (21, 1, '2018-06-14 12:10:01', 5),
    (22, 2, '2018-06-14 12:10:01', 27),
    (23, 3, '2018-06-14 12:10:01', 21),
    (24, 4, '2018-06-14 12:10:01', -4),
    (25, 5, '2018-06-14 12:10:01', -30);

select driver_id, round(avg(abs(diff))) as avg_diff
    from bus_logs
    group by driver_id
    having avg_diff > 30;