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
    (1, 1, '2017-01-02 12:23:03'),
    (2, 18, '2017-01-02 14:23:24'),
    (3, 11, '2017-01-03 12:17:50'),
    (4, 145, '2017-01-06 18:37:01'),
    (5, 1, '2017-01-07 12:12:08'),
    (6, 4, '2017-01-07 12:12:14');


delete from visits;
select * from visits;