CREATE DATABASE UniversityDB;
CREATE SCHEMA university;
CREATE TABLE university.Students (
    student_id BIGSERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    birth_date DATE,
    email VARCHAR(255) NOT NULL UNIQUE
);
CREATE TABLE university.Courses(
    course_id BIGSERIAL PRIMARY KEY ,
    course_name VARCHAR(100) NOT NULL ,
    credit NUMERIC(10,2)
);
CREATE TABLE university.Enrollments(
    enrollment_id BIGSERIAL PRIMARY KEY ,
    student_id BIGINT NOT NULL REFERENCES university.Students(student_id),
    course_id BIGINT NOT NULL REFERENCES university.Courses(course_id),
    enroll_date DATE
);
SELECT datname FROM pg_database;
-- Xem toàn bộ Schema
SELECT  schema_name FROM information_schema.schemata;
-- xem cấu trúc bảng Student
SELECT
    column_name,
    data_type,
    is_nullable,
    column_default
FROM information_schema.columns
WHERE table_schema = 'university'
  AND table_name = 'students'
ORDER BY ordinal_position;
-- Xem cấu trúc bảng Courses
SELECT
    column_name,
    data_type,
    is_nullable,
    column_default
FROM information_schema.columns
WHERE table_schema = 'university'
  AND table_name = 'courses'
ORDER BY ordinal_position;
--Xem cấu trúc bảng Enrollments
SELECT
    column_name,
    data_type,
    is_nullable,
    column_default
FROM information_schema.columns
WHERE table_schema = 'university'
  AND table_name = 'enrollments'
ORDER BY ordinal_position;