# Movie SQL Analysis

### Overview
This project demonstrates practical SQL skills by analyzing a movie database using SQLite.
The focus is on writing clean, readable queries using filtering, aggregation, grouping, and joins.

### Tables
- movies (id, title, genre, rating)
- reviews (id, movie_id, reviewer, comment)
- reviewers (id, name, age)


### Skills Demonstrated
- SELECT, WHERE, ORDER BY
- GROUP BY and HAVING
- Aggregate functions (COUNT, AVG)
- INNER JOIN and LEFT JOIN
- Query optimization and readable aliases

### Example Query
```sql
SELECT m.genre, COUNT(r.id) AS review_count
FROM movies m
LEFT JOIN reviews r ON m.id = r.movie_id
GROUP BY m.genre;
```

### How to Run
```md
### How to Run
1. Open the database file using SQLite or VS Code SQLite Viewer
2. Run the SQL files inside the `queries/` directory
```

