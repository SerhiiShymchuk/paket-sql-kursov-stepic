SET foreign_key_checks = 0;
DROP TABLE IF EXISTS passports;
SET foreign_key_checks = 1;
CREATE Table passports (
    series VARCHAR(4) not null,
    numbers VARCHAR(6) not null,
    user_id int UNSIGNED not null,
    date_issue DATE,
    PRIMARY KEY(series, numbers)
);
INSERT into passports (series, numbers, user_id, date_issue)
VALUES
('3206', '147345', 15, '2006-08-12'),
('3216', '147345', 234, '2016-09-23'),
('2405', '147345', 1, '2015-01-07'),
('5411', '147345', 15, '2008-03-03');
SELECT * from passports;