SET foreign_key_checks = 0;
DROP TABLE IF EXISTS games;
SET foreign_key_checks = 1;
CREATE TABLE games (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_id INTEGER NULL,
    name VARCHAR(50) NULL,
    rating NUMERIC(10, 2) NULL,
    year INTEGER NULL
);
INSERT INTO games (id, category_id, name, rating, year)
VALUES
    (1, 2, 'The Witcher 3: Wild Hunt', '9.61', 2015),
    (2, 4, 'Warcraft III: The Frozen Throne', '9.00', 2003),
    (3, 1, 'Max Payne 2: The Fall of Max Payne', '8.63', 2003),
    (4, 3, 'The Last of Us', '9.45', 2013),
    (5, 3, 'Mafia II', '8.94', 2010),
    (6, 1, 'Grand Theft Auto V', '9.18', 2013),
    (7, 5, 'Far Cry 3', '8.67', 2012),
    (8, 4, 'Plants vs. Zombies', '8.90', 2009),
    (9, 2, 'Diablo III', '9.22', 2012),
    (10, 8, 'Mortal Kombat X', '8.70', 2015),
    (11, 7, 'Tetris', '9.05', 1984),
    (12, 5, 'Doom', '8.75', 2016),
    (13, 2, 'Mass Effect 3', '9.00', 2012),
    (14, 3, "Uncharted 4: A Thief's End", '9.33', 2016),
    (15, 2, 'Call of Duty: Black Ops II', '8.88', 2012),
    (16, 5, 'Metro: Last Light', '9.25', 2013),
    (17, 1, 'Outlast', '9.00', 2013),
    (18, 6, 'Need for Speed: Most Wanted', '9.08', 2005),
    (19, 4, 'Warcraft III: Reign of Chaos', '9.29', 2002),
    (20, 3, 'The Walking Dead: The Game - Season 2', '9.00', 2014);

(
    (
        SELECT
            id, name, rating, 'Action' AS genre
        FROM
            games
        WHERE
            category_id = 1
        ORDER BY
            rating DESC, id
        LIMIT
            2
    )
    UNION
    (
        SELECT
            id, name, rating, 'RPG' AS genre
        FROM
            games
        WHERE
            category_id = 2
        ORDER BY
            rating DESC, id
        LIMIT
            2
    )
    UNION
    (
        SELECT
            id, name, rating, 'Adventure' AS genre
        FROM
            games
        WHERE
            category_id = 3
        ORDER BY
            rating DESC, id
        LIMIT
            2
    )
    UNION
    (
        SELECT
            id, name, rating, 'Strategy' AS genre
        FROM
            games
        WHERE
            category_id = 4
        ORDER BY
            rating DESC, id
        LIMIT
            2
    )
    UNION
    (
        SELECT
            id, name, rating, 'Shooter' AS genre
        FROM
            games
        WHERE
            category_id = 5
        ORDER BY
            rating DESC, id
        LIMIT
            2
    )
)
ORDER BY rating DESC;
