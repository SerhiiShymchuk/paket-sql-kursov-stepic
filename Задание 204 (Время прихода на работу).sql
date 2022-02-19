SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS arrival;
SET
    foreign_key_checks = 1;
CREATE TABLE arrival (
    id int UNSIGNED,
    user_id int UNSIGNED,
    a_data DATE,
    a_time TIME
);
INSERT INTO
    arrival (id, user_id, a_data, a_time)
VALUES
    (1, 12, '2017-03-09', '08:45:41'),
    (2, 34, '2017-03-09', '08:46:12'),
    (3, 12, '2017-03-09', '08:53:01'),
    (4, 56, '2017-03-09', '09:01:17');
SELECT
    *
FROM
    arrival;