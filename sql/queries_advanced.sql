-- 1. Top 3 movies by average rating (minimum 3 reviews)
SELECT 
    m.title,
    ROUND(AVG(r.rating), 2) AS avg_rating,
    COUNT(r.id) AS review_count
FROM movies m
JOIN reviews r ON m.id = r.movie_id
GROUP BY m.id
HAVING review_count >= 3
ORDER BY avg_rating DESC
LIMIT 3;

-- 2. Movies rated above overall average rating
SELECT 
    m.title,
    ROUND(AVG(r.rating), 2) AS movie_avg
FROM movies m
JOIN reviews r ON m.id = r.movie_id
GROUP BY m.id
HAVING movie_avg > (
    SELECT AVG(rating) FROM reviews
);

-- 3. Rank movies by rating using window function
SELECT 
    m.title,
    ROUND(AVG(r.rating), 2) AS avg_rating,
    RANK() OVER (ORDER BY AVG(r.rating) DESC) AS rating_rank
FROM movies m
JOIN reviews r ON m.id = r.movie_id
GROUP BY m.id;

-- 4. User ranking based on number of reviews
SELECT 
    u.username,
    COUNT(r.id) AS total_reviews,
    RANK() OVER (ORDER BY COUNT(r.id) DESC) AS user_rank
FROM users u
JOIN reviews r ON u.id = r.user_id
GROUP BY u.id;

-- 5. Genre-wise average rating
SELECT 
    g.name AS genre,
    ROUND(AVG(r.rating), 2) AS avg_rating
FROM genres g
JOIN movie_genres mg ON g.id = mg.genre_id
JOIN movies m ON mg.movie_id = m.id
JOIN reviews r ON m.id = r.movie_id
GROUP BY g.id
ORDER BY avg_rating DESC;

-- 6. Classify movies based on rating
SELECT 
    m.title,
    ROUND(AVG(r.rating), 2) AS avg_rating,
    CASE
        WHEN AVG(r.rating) >= 8 THEN 'Excellent'
        WHEN AVG(r.rating) >= 6 THEN 'Good'
        ELSE 'Average'
    END AS rating_category
FROM movies m
JOIN reviews r ON m.id = r.movie_id
GROUP BY m.id;

-- 7. Most active user
SELECT 
    u.username,
    COUNT(r.id) AS total_reviews
FROM users u
JOIN reviews r ON u.id = r.user_id
GROUP BY u.id
ORDER BY total_reviews DESC
LIMIT 1;
