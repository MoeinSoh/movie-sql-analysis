# Movies SQL Practice Project

This project is a practical SQL portfolio focused on designing a relational database
and writing meaningful queries from basic to advanced level.

The goal of this project is to demonstrate real SQL skills, including:
- Database schema design
- Data integrity constraints
- Writing clean and readable SQL
- Aggregations and filtering
- Practical data analysis use cases

---

## Project Structure

project-name/
│
├─ data/
│ └─ movies.db
│
├─ sql/
│ ├─ schema.sql
│ ├─ queries_basic.sql
│ ├─ queries_intermediate.sql
│ ├─ queries_advanced.sql
│
├─ screenshots/
│ ├─ basic_queries_output.png
│ └─ advanced_query_output.png
│
├─ README.md


---

## Database Schema

The database consists of three main tables:

### 1. movies
Stores movie information.

Columns:
- id (Primary Key)
- title (TEXT, NOT NULL)
- genre (TEXT, NOT NULL)
- rating (INTEGER, between 1 and 10, nullable)

### 2. reviewers
Stores reviewer information.

Columns:
- id (Primary Key)
- name (TEXT, NOT NULL)
- age (INTEGER, nullable)

### 3. reviews
Represents the relationship between movies and reviewers.

Columns:
- id (Primary Key)
- movie_id (Foreign Key → movies.id)
- reviewer_id (Foreign Key → reviewers.id)
- comment (TEXT)

Refer to `sql/schema.sql` for the full schema definition.

---

## Queries Overview

### Basic Queries
- SELECT statements
- WHERE filtering
- ORDER BY sorting
- LIMIT results

File: `queries_basic.sql`

---

### Intermediate Queries
- Aggregate functions (COUNT, AVG)
- GROUP BY
- HAVING conditions
- Genre-based and rating-based analysis

File: `queries_intermediate.sql`

---

### Advanced Queries
- Subqueries
- Combined aggregations
- Analytical queries for insights

File: `queries_advanced.sql`

---

## Sample Output

Screenshots of executed queries and their outputs are available in the `screenshots/` directory.

---

## How to Run the Project

```bash
sqlite3 movies.db
.read sql/schema.sql
.read sql/queries_basic.sql

```

You can also run intermediate and advanced queries using:
```bash
.read sql/queries_intermediate.sql
.read sql/queries_advanced.sql
```

## Purpose

This project is part of my SQL learning journey and is designed to be portfolio-ready.
It demonstrates practical SQL usage rather than theoretical examples and can be
extended in the future using Python or other backend technologies.