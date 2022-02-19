SET foreign_key_checks = 0;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS artists;
SET foreign_key_checks = 1;
CREATE TABLE genres (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL
);
INSERT INTO genres (id, name)
VALUES
    (1, 'Rock'),
    (2, 'Pop'),
    (3, 'Rap'),
    (4, 'Jazz'),
    (5, 'Electronic'),
    (6, 'Metal');
CREATE TABLE artists (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    genre_id INTEGER NULL,
    is_group BOOLEAN NULL
);
INSERT INTO artists (id, name, genre_id, is_group)
VALUES
    (1, 'Skrillex', 5, False),
    (2, 'Eminem', 3, False),
    (3, 'Metallica', 6, True),
    (4, 'Linkin Park', 1, True),
    (5, 'Hardwell', 5, False),
    (6, '50 Cent', 3, False),
    (7, 'Slipknot', 6, True),
    (8, 'Green Day', 1, True),
    (9, 'Daft punk', 5, True),
    (10, 'Snoop Dogg', 3, False),
    (11, 'Korn', 6, True),
    (12, 'Blink 182', 1, True),
    (13, 'Maroon 5', 2, True);

select genres.name as genre, artists.name 
from genres
join artists
on artists.genre_id = genres.id
where artists.is_group = true
order by genre, artists.name;