CREATE DATABASE IF NOT EXISTS movie_db;

USE movie_db

DROP TABLE IF EXISTS movies;
CREATE TABLE IF NOT EXISTS movies
(
    title    VARCHAR(50)  NOT NULL,
    rating   INT UNSIGNED,
    poster   TEXT,
    year     INT          NOT NULL,
    genre    VARCHAR(70)  NOT NULL,
    director VARCHAR(50)  NOT NULL,
    plot     TEXT,
    actors   VARCHAR(100) NOT NULL,
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id)
);

INSERT INTO movies (title, year, genre, director, actors, id)
VALUES
('dsad', 2002, 'dsdas', 'dsadsad', 'dsadsadsadsa', 6);

INSERT INTO movies (title, year, genre, director, actors)
VALUES
('dsad', 2002, 'dsdas', 'dsadsad', 'dsadsadsadsa');

INSERT INTO movies (title, year, genre, director, actors, id)
VALUES
('dsad', 2002, 'dsdas', 'dsadsad', 'dsadsadsadsa', 69);

INSERT INTO movies (title, year, genre, director, actors)
VALUES
('dsad', 2002, 'dsdas', 'dsadsad', 'dsadsadsadsa');

SELECT * FROM movies;