-- ======================================
-- Database Schema
-- Project: Movies SQL Practice
-- Description:
-- This schema is designed for practicing
-- SQL queries from basic to advanced level.
-- ======================================


-- =====================
-- 1. Movies table
-- =====================
CREATE TABLE IF NOT EXISTS movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    title TEXT NOT NULL,
    genre TEXT NOT NULL,

    -- Movie rating from 1 to 10 (optional)
    rating INTEGER CHECK (rating BETWEEN 1 AND 10)
);


-- =====================
-- 2. Reviewers table
-- =====================
CREATE TABLE IF NOT EXISTS reviewers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    name TEXT NOT NULL,

    -- Age is optional
    age INTEGER CHECK (age >= 0)
);


-- =====================
-- 3. Reviews table
-- Relation between movies and reviewers
-- =====================
CREATE TABLE IF NOT EXISTS reviews (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    movie_id INTEGER NOT NULL,
    reviewer_id INTEGER NOT NULL,

    comment TEXT,

    -- Foreign key constraints
    FOREIGN KEY (movie_id) REFERENCES movies(id),
    FOREIGN KEY (reviewer_id) REFERENCES reviewers(id)
);
