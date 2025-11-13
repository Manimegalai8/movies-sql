CREATE DATABASE MoviesDB;
USE MoviesDB;

CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    join_date DATE
);

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200),
    release_year YEAR,
    duration INT
);

CREATE TABLE Genres (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(100)
);

CREATE TABLE Movie_Genres (
    movie_id INT,
    genre_id INT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

INSERT INTO Movie_Genres VALUES
(1, 1), (1, 3),   
(2, 1), (2, 3), 
(3, 2), (3, 4),  
(4, 2);    

INSERT INTO Users (name, email, join_date) VALUES
('Angel', 'angel@gmail.com', '2025-01-01'),
('Ravi', 'ravi@gmail.com', '2025-02-12'),
('Priya', 'priya@gmail.com', '2025-03-05');

INSERT INTO Movies (title, release_year, duration) VALUES
('Vikram', 2022, 175),
('Leo', 2023, 164),
('96', 2018, 158),
('Soorarai Pottru', 2020, 153);

INSERT INTO Genres (genre_name) VALUES
('Action'), ('Drama'), ('Thriller'), ('Romance');

SELECT * FROM Users;
SELECT * FROM Movies
WHERE release_year > 2020;
SELECT * FROM Genres;
SELECT title, duration FROM Movies
WHERE duration > 160;

SELECT m.title, g.genre_name
FROM Movies m
JOIN Movie_Genres mg ON m.movie_id = mg.movie_id
JOIN Genres g ON mg.genre_id = g.genre_id;


