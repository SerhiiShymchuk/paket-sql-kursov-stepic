SET foreign_key_checks = 0;
DROP TABLE IF EXISTS files;
SET foreign_key_checks = 1;
create table files (
    id int UNSIGNED AUTO_INCREMENT,
    PRIMARY KEY(id),
    file_url varchar(500),
    file_path varchar(200),
    size bigint UNSIGNED
);
insert into files (file_url, file_path, size)
VALUES ('http://archives.com/archives/big_archive.zip', 'files/2018/02/archive.zip', 81604378624),
('http://movies.com/movies/movie.mp4', '', 0),
('http://movies.com/best-songs/song.mp3', 'files/2018/03/song.mp3', 5242880);
select * from files;