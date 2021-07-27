USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT AUTO_INCREMENT,
    artist VARCHAR(69),
    name VARCHAR(69),
    release_date INT,
    sales FLOAT,
    genre VARCHAR(69),
    PRIMARY KEY(id)
);