-- setup.sql - Create table and insert data

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    username TEXT,
    email TEXT
);

INSERT INTO users (username, email) VALUES ('elgen', 'elgen@email.com');
