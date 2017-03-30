-- psql -a -f migrations.sql

CREATE DATABASE gatest;

\c gatest

CREATE TABLE locations (id SERIAL PRIMARY KEY, name varchar(255));

CREATE TABLE course_locations (id SERIAL PRIMARY KEY, course_id INT references courses(id), location_id INT references locations(id));

CREATE TABLE courses (id SERIAL PRIMARY KEY, name varchar(255));

CREATE TABLE students (id SERIAL PRIMARY KEY, name varchar(255), course_id INT references courses(id));

INSERT INTO locations (NAME) VALUES ('Chicago');

INSERT INTO locations (NAME) VALUES ('New York');

INSERT INTO courses (NAME) VALUES ('WDI');

INSERT INTO courses (name) VALUES ('DSI');

INSERT INTO courses (name) VALUES ('UXDI');

INSERT INTO course_locations (course_id, location_id) VALUES (1,1);

INSERT INTO students (name, course_id) VALUES ('Jeff', 1);

INSERT INTO students (name, course_id) VALUES ('Naomi', 1);

INSERT INTO students (name, course_id) VALUES ('Ann', 1);

INSERT INTO students (name, course_id) VALUES ('Katelyn', 1);

INSERT INTO students (name, course_id) VALUES ('Terry', 1);

INSERT INTO students (name, course_id) VALUES ('John', 2);

INSERT INTO students (name, course_id) VALUES ('Bridjet', 2);

INSERT INTO students (name, course_id) VALUES ('Chris', 2);

INSERT INTO students (name, course_id) VALUES ('Lane', 2);

INSERT INTO students (name, course_id) VALUES ('Ben', 2);

INSERT INTO students (name, course_id) VALUES ('Reuben', 3);

INSERT INTO students (name, course_id) VALUES ('Jason', 3);

INSERT INTO students (name, course_id) VALUES ('Mike', 3);

INSERT INTO students (name, course_id) VALUES ('Matias', 3);

INSERT INTO students (name, course_id) VALUES ('Nate', 3);
