SET foreign_key_checks = 0;
DROP TABLE IF EXISTS rating;
SET foreign_key_checks = 1;

CREATE Table rating (
    id INT,
    car_id INT,
    user_id INT,
    rating FLOAT
);

INSERT INTO rating set id=1, car_id=1, user_id=1, rating=4.54;
INSERT INTO rating set id=2, car_id=1, user_id=2, rating=3.34;
INSERT INTO rating set id=3, car_id=1, user_id=34, rating=34.34;
INSERT INTO rating set id=4, car_id=1, user_id=3, rating=3.345;