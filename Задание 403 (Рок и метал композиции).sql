SET foreign_key_checks = 0;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS artists_genres;
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
    (6, 'Metal'),
    (7, 'Hip-Hop');
CREATE TABLE artists (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    is_group BOOLEAN NULL
);
INSERT INTO artists (id, name, is_group)
VALUES
    (1, 'Skrillex', False),
    (2, 'Eminem', False),
    (3, 'Metallica', True),
    (4, 'Linkin Park', True),
    (5, 'Hardwell', False),
    (6, '50 Cent', False),
    (7, 'Slipknot', True),
    (8, 'Green Day', True),
    (9, 'Britney Spears', False),
    (10, 'Snoop Dogg', False),
    (11, 'Billy Talent', True),
    (12, 'Sum 41', True),
    (13, 'Maroon 5', False),
    (14, 'Hip-Hop', NULL);
CREATE TABLE artists_genres (
    artist_id INTEGER NULL,
    genre_id INTEGER NULL
);
INSERT INTO artists_genres (artist_id, genre_id)
VALUES
    (1, 5),
    (2, 3),
    (2, 7),
    (3, 6),
    (4, 1),
    (5, 5),
    (6, 3),
    (6, 7),
    (7, 6),
    (8, 1),
    (9, 2),
    (10, 3),
    (11, 1),
    (12, 1),
    (12, 6),
    (13, 2);
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    artist_id INTEGER NULL,
    year INTEGER NULL
);
INSERT INTO albums (id, name, artist_id, year)
VALUES
    (1, 'Hands All Over', 13, 2010),
    (2, 'Malice n Wonderland', 10, 2009),
    (3, 'Relapse', 2, 2009),
    (4, 'Billy Talent III', 11, 2009),
    (5, 'Ride the Lightning', 3, 1984),
    (6, '21st Century Breakdown', 8, 2009),
    (7, 'Circus ', 9, 2008),
    (8, 'Dookie', 8, 1994),
    (9, 'Screaming Bloody Murder', 12, 2011),
    (10, 'Death Magnetic', 3, 2008),
    (11, 'Before I Self Destruct', 6, 2009),
    (12, 'Songs About Jane', 13, 2002),
    (13, '13 Voices', 12, 2016);
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
    (14, 'War', 13),
    (15, 'Crime Wave', 11),
    (16, 'Turn Your Back', 4),
    (17, 'Shiver', 12),
    (18, 'Tears Into Wine', 4),
    (19, 'Get It Hot', 11),
    (20, 'Sunday Morning', 12),
    (21, '13 Voices', 13),
    (22, 'White Sparrows', 4),
    (23, 'Womanizer', 7),
    (24, 'Pronto', 2),
    (25, 'Crash', 9),
    (26, 'I Wanna Rock', 2),
    (27, 'Skumfuk', 9);

SELECT distinct songs.id, songs.name, albums.name as album, artists.name as artist, albums.year
    from genres
    join artists_genres on artists_genres.genre_id = genres.id
    join artists on artists.id = artists_genres.artist_id
    join albums on albums.artist_id = artists.id
    join songs on songs.album_id = albums.id
    where 
        genres.name in ('rock', 'metal')
        and albums.year > 2007
    order by albums.year, songs.id;