SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS cars;
SET
    foreign_key_checks = 1;
CREATE TABLE cars (
    id int UNSIGNED,
    mark VARCHAR(20),
    model VARCHAR(20),
    year YEAR,
    mileage MEDIUMINT UNSIGNED
);
INSERT INTO
    cars (id, mark, model, year, mileage)
VALUES
    (1, 'Toyota', 'Camry', '2015', 32000),
    (2, 'Mazda', 'CX-5', '2016', 17000),
    (3, 'Nissan', 'Patrol', '2016', 60000);
SELECT
    *
FROM
    cars;