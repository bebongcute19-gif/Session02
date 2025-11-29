CREATE DATABASE LibraryDB;
CREATE SCHEMA library;
CREATE TABLE library.Books(
    book_id BIGSERIAL PRIMARY KEY ,
    title VARCHAR(100)NOT NULL ,
    author VARCHAR(50) NOT NULL ,
    published_year INT ,
    price NUMERIC(10,2)

);
SELECT datname FROM pg_database;
SELECT  schema_name FROM information_schema.schemata;
SELECT
    column_name,
    data_type,
    is_nullable,
    column_default
FROM information_schema.columns
WHERE table_schema = 'library'
AND table_name = 'books'
ORDER BY ordinal_position;