SET foreign_key_checks = 0;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS songs;
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
    (9, 'Britney Spears', 2, False),
    (10, 'Snoop Dogg', 3, False),
    (11, 'Billy Talent', 1, True),
    (12, 'Blink 182', 1, True),
    (13, 'Maroon 5', 2, False);
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    artist_id INTEGER NULL,
    year INTEGER NULL
);
INSERT INTO albums (id, name, artist_id, year)
VALUES
    (1, 'Hands All Over', 13, 2008),
    (2, 'Malice n Wonderland', 10, 2009),
    (3, 'Relapse', 2, 2009),
    (4, 'Billy Talent III', 11, 2009),
    (5, 'Ride the Lightning', 2, 1984),
    (6, '21st Century Breakdown', 8, 2009),
    (7, 'Circus ', 9, 2008),
    (8, 'Dookie', 8, 1994),
    (9, 'Cheshire Cat', 12, 1994),
    (10, 'Death Magnetic', 3, 2008),
    (11, 'Before I Self Destruct', 6, 2009),
    (12, 'Songs About Jane', 13, 2002),
    (13, 'California', 12, 2016);
CREATE TABLE songs (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    album_id INTEGER NULL
);
INSERT INTO songs (id, name, album_id)
VALUES
    (1, 'Misery', 1),
    (2, 'My Mom', 3),
    (3, 'Know Your Enemy', 6),
    (4, 'Coming Clean', 8),
    (5, 'Ride the Lightning', 5),
    (6, 'The Day That Never Comes', 10),
    (7, 'Beautiful', 3),
    (8, 'Chump', 8),
    (9, 'Fade to Black', 5),
    (10, 'Runaway', 1),
    (11, 'Peacemaker', 6),
    (12, 'How', 1),
    (13, 'Cyanide', 10),
    (14, 'Rabbit Hole', 13),
    (15, 'Crime Wave', 11),
    (16, 'Turn Your Back', 4),
    (17, 'Shiver', 12),
    (18, 'Tears Into Wine', 4),
    (19, 'Get It Hot', 11),
    (20, 'Sunday Morning', 12),
    (21, 'No Future', 13),
    (22, 'White Sparrows', 4),
    (23, 'Womanizer', 7),
    (24, 'Pronto', 2),
    (25, 'TV', 9),
    (26, 'I Wanna Rock', 2),
    (27, 'Toast and Bananas', 9);

select genres.name as name, count(songs.name) as song
    from genres
    left join artists on genres.id = artists.genre_id
    left join albums on albums.artist_id = artists.id
    left join songs on songs.album_id = albums.id
    group by name
    having song > 0
    order by name;


