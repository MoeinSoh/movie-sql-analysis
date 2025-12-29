-- 1. Average rating of each movie
SELECT 
    m.title,
    ROUND(AVG(r.rating), 2) AS avg_rating
FROM movies m
JOIN reviews r ON m.id = r.movie_id
GROUP BY m.id
ORDER BY avg_rating DESC;

-- 2. Number of reviews per movie
SELECT 
    m.title,
    COUNT(r.id) AS review_count
FROM movies m
LEFT JOIN reviews r ON m.id = r.movie_id
GROUP BY m.id
ORDER BY review_count DESC;

-- 3. Movies with average rating above 7
SELECT 
    m.title,
    ROUND(AVG(r.rating), 2) AS avg_rating
FROM movies m
JOIN reviews r ON m.id = r.movie_id
GROUP BY m.id
HAVING avg_rating > 7;

-- 4. Users who wrote more than 3 reviews
SELECT 
    u.username,
    COUNT(r.id) AS total_reviews
FROM users u
JOIN reviews r ON u.id = r.user_id
GROUP BY u.id
HAVING total_reviews > 3;

-- 5. Movies released after 2015 with their ratings
SELECT 
    m.title,
    m.release_year,
    ROUND(AVG(r.rating), 2) AS avg_rating
FROM movies m
JOIN reviews r ON m.id = r.movie_id
WHERE m.release_year > 2015
GROUP BY m.id;

-- 6. Highest rated movie
SELECT 
    m.title,
    ROUND(AVG(r.rating), 2) AS avg_rating
FROM movies m
JOIN reviews r ON m.id = r.movie_id
GROUP BY m.id
ORDER BY avg_rating DESC
LIMIT 1;

-- 7. Lowest rated movie
SELECT 
    m.title,
    ROUND(AVG(r.rating), 2) AS avg_rating
FROM movies m
JOIN reviews r ON m.id = r.movie_id
GROUP BY m.id
ORDER BY avg_rating ASC
LIMIT 1;

-- 8. Average rating per user
SELECT 
    u.username,
    ROUND(AVG(r.rating), 2) AS avg_rating_given
FROM users u
JOIN reviews r ON u.id = r.user_id
GROUP BY u.id;

-- 9. Movies with no reviews
SELECT 
    m.title
FROM movies m
LEFT JOIN reviews r ON m.id = r.movie_id
WHERE r.id IS NULL;
