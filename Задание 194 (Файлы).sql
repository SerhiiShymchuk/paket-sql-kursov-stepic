USE test;

SET
    foreign_key_checks = 0;

DROP TABLE IF EXISTS files;

SET
    foreign_key_checks = 1;

CREATE TABLE files (
    id int UNSIGNED AUTO_INCREMENT,
    PRIMARY KEY(id),
    filename VARCHAR(255),
    size BIGINT UNSIGNED,
    filetype VARCHAR(3)
);

INSERT INTO
    files
SET
    filename = 'big_archive.zip',
    size = 81604378624,
    filetype = 'zip';

INSERT INTO
    files
SET
    filename = 'movie_37.mp4',
    size = 7838315315,
    filetype = 'mp3';

SELECT
    *
FROM
    files;