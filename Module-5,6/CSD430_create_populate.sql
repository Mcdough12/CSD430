-- =========================================================
-- CSD430 - Module Project Part 1
-- Database: CSD430
-- User: student1 / pass
-- Table: reed_movies_data
-- =========================================================

-- 1) Create database
CREATE DATABASE IF NOT EXISTS CSD430;
USE CSD430;

-- 2) Create user + permissions (run as root/admin)
CREATE USER IF NOT EXISTS 'student1'@'localhost' IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON CSD430.* TO 'student1'@'localhost';
FLUSH PRIVILEGES;

-- 3) Drop/recreate table
DROP TABLE IF EXISTS reed_movies_data;

CREATE TABLE reed_movies_data (
  movie_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  genre VARCHAR(50) NOT NULL,
  release_year INT NOT NULL,
  director VARCHAR(80) NOT NULL,
  rating DECIMAL(2,1) NOT NULL
);

-- 4) Insert 10 records
INSERT INTO reed_movies_data (title, genre, release_year, director, rating) VALUES
('The Matrix', 'Sci-Fi', 1999, 'The Wachowskis', 8.7),
('Inception', 'Sci-Fi', 2010, 'Christopher Nolan', 8.8),
('The Dark Knight', 'Action', 2008, 'Christopher Nolan', 9.0),
('Interstellar', 'Sci-Fi', 2014, 'Christopher Nolan', 8.7),
('Gladiator', 'Action', 2000, 'Ridley Scott', 8.5),
('Toy Story', 'Animation', 1995, 'John Lasseter', 8.3),
('Finding Nemo', 'Animation', 2003, 'Andrew Stanton', 8.2),
('Titanic', 'Drama', 1997, 'James Cameron', 7.9),
('Jurassic Park', 'Adventure', 1993, 'Steven Spielberg', 8.2),
('The Godfather', 'Crime', 1972, 'Francis Ford Coppola', 9.2);

-- 5) Verify
SELECT * FROM reed_movies_data;
