-- Show all movies
SELECT * 
FROM movies;

-- High rated movies
SELECT *
FROM movies
WHERE rate >= 9;

-- Order by rating
SELECT *
FROM movies
ORDER BY rate DESC;

-- 
