SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS rooms;
SET
    foreign_key_checks = 1;
CREATE TABLE rooms (
    id int UNSIGNED NOT NULL,
    number TINYINT UNSIGNED NOT NULL,
    beds enum('1+1', '2+1', '2+2') NOT NULL,
    additional
    SET
('conditioner', 'bar', 'fridge', 'wifi')
);
INSERT INTO
    rooms (id, number, beds, additional)
VALUES
    (1, 10, '1+1', 'conditioner,bar,wifi'),
    (2, 12, '2+1', ''),
    (3, 24, '2+2', 'fridge,bar,wifi');
SELECT
    *
FROM
    rooms;