-- ======================================
-- Basic SQL Queries
-- Project: Movies SQL Practice
-- Purpose:
-- Practice fundamental SQL operations
-- such as SELECT, WHERE, ORDER BY,
-- DISTINCT, and basic aggregations.
-- ======================================


-- 1. Show all movies
SELECT *
FROM movies;


-- 2. Show movie titles and genres only
SELECT title, genre
FROM movies;


-- 3. Find all movies with rating greater than or equal to 8
SELECT title, rating
FROM movies
WHERE rating >= 8;


-- 4. List movies ordered by rating (highest first)
SELECT title, rating
FROM movies
ORDER BY rating DESC;


-- 5. Show distinct movie genres
SELECT DISTINCT genre
FROM movies;


-- 6. Count total number of movies
SELECT COUNT(*) AS total_movies
FROM movies;


-- 7. Calculate average movie rating
SELECT AVG(rating) AS average_rating
FROM movies;


-- 8. Find highest and lowest movie rating
SELECT
    MAX(rating) AS max_rating,
    MIN(rating) AS min_rating
FROM movies;


-- 9. Show all reviewers
SELECT *
FROM reviewers;


-- 10. Find reviewers older than 25
SELECT name, age
FROM reviewers
WHERE age > 25;
