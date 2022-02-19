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
    (3, 'Jazz'),
    (4, 'Electronic'),
    (5, 'Metal');
CREATE TABLE artists (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    genre_id INTEGER NULL,
    is_group BOOLEAN NULL
);
INSERT INTO artists (id, name, genre_id, is_group)
VALUES
    (1, 'Skrillex', 4, False),
    (2, 'Metallica', 5, True),
    (3, 'Linkin Park', 1, True),
    (4, 'Hardwell', 4, False),
    (5, 'Slipknot', 5, True),
    (6, 'Green Day', 1, True),
    (7, 'Daft punk', 4, True),
    (8, 'Korn', 5, True),
    (9, 'Blink 182', 1, True),
    (10, 'Maroon 5', 2, True);

insert into genres (name) values ('Rap');
insert into artists (name, genre_id, is_group)
values ('Eminem', (select id from genres where genres.name = 'Rap'), false);