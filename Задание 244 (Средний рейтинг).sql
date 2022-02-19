SET
    foreign_key_checks = 0;
DROP TABLE IF EXISTS films;
SET
    foreign_key_checks = 1;
CREATE TABLE films (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    kinopoisk FLOAT NOT NULL DEFAULT 0,
    imdb FLOAT NOT NULL DEFAULT 0,
    year YEAR NULL
);
INSERT INTO
    films (id, name, kinopoisk, imdb, year)
VALUES
    (1, 'Зеленая миля', 9.135, 8.5, 1999),
    (2, 'Бойцовский клуб', 8.715, 8.8, 1999),
    (3, 'Форрест Гамп', 9.013, 8.7, 1994),
    (4, 'Побег из Шоушенка', 9.191, 9.2, 1994),
    (5, 'Список Шиндлера', 8.884, 8.9, 1993),
    (
        6,
        'Иван Васильевич меняет профессию',
        8.707,
        8.4,
        1973
    ),
    (7, 'Леон', 8.778, 8.5, 1994),
    (8, 'Начало', 8.775, 8.2, 2010),
    (9, '1+1', 8.838, 8.5, 2011),
    (10, 'Король Лев', 8.758, 8.5, 1994);
ALTER TABLE
    films
ADD
    COLUMN rating FLOAT NOT NULL DEFAULT 0;
UPDATE
    films
SET
    rating = (kinopoisk + imdb) / 2;
SELECT
    *
FROM
    films;