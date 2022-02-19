SET foreign_key_checks = 0;
DROP TABLE IF EXISTS films;
SET foreign_key_checks = 1;
CREATE TABLE films (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    rating FLOAT NULL,
    year INTEGER NULL,
    votes INTEGER NULL
);
INSERT INTO films (id, name, rating, year, votes)
VALUES
    (1, 'Зеленая миля', 9.135, 1999, 431238),
    (2, 'Бойцовский клуб', 8.715, 1999, 410297),
    (3, 'Форрест Гамп', 9.013, 1994, 421514),
    (4, 'Побег из Шоушенка', 9.191, 1994, 460078),
    (5, 'Список Шиндлера', 8.884, 1993, 233033),
    (6, 'Иван Васильевич меняет профессию', 8.707, 1973, 320339),
    (7, 'Леон', 8.778, 1994, 351308),
    (8, 'Начало', 8.775, 2010, 484028),
    (9, '1+1', 8.838, 2011, 444942),
    (10, 'Король Лев', 8.758, 1994, 300302);
select name, round(rating, 2) as rating from films
ORDER BY rating DESC
LIMIT 5;