SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS temperature;
SET
    foreign_key_checks = 1;
CREATE TABLE temperature (
    id int UNSIGNED,
    city_id int UNSIGNED,
    temperature TINYINT,
    wind_speed TINYINT UNSIGNED,
    mdate DATETIME
);
INSERT INTO
    temperature (id, city_id, temperature, wind_speed, mdate)
VALUES
    (1, 456, 17, 7, '2017-02-08 12:00:00'),
    (2, 456, 19, 6, '2017-02-08 12:10:00'),
    (3, 456, 20, 6, '2017-02-08 12:20:00'),
    (4, 471, -7, 12, '2017-02-08 12:20:01'),
    (5, 44, -43, 17, '2017-02-08 12:23:12');
SELECT
    *
FROM
    temperature;