USE codeup_test_db;

DROP TABLE IF EXISTS

CREATE TABLE IF NOT EXISTS albums (
    id INT AUTO_INCREMENT,
    artist VARCHAR(30),
    name VARCHAR(30),
    release_date INT,
    sales FLOAT,
    genre VARCHAR(30),
    PRIMARY KEY(id)
);
-- I am testing branch rename hopefully I didn't mess this up