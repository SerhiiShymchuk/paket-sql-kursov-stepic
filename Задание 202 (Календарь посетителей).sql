SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS calendar;
SET
    foreign_key_checks = 1;
CREATE TABLE calendar (
    id int UNSIGNED,
    user_id int UNSIGNED,
    doctor_id int UNSIGNED,
    visit_date DATETIME
);
INSERT INTO
    calendar (id, user_id, doctor_id, visit_date)
VALUES
    (1, 1914, 1, '2017-04-08 12:00:00'),
    (2, 12, 1, '2017-04-08 12:30:00'),
    (3, 4641, 2, '2017-04-09 09:00:00'),
    (4, 784, 1, '2017-04-08 13:00:00'),
    (5, 15, 2, '2017-04-09 10:00:00');
SELECT
    *
FROM
    calendar;