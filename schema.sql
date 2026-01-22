DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS customers;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL UNIQUE,
    password_hash TEXT NOT NULL
);

CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    company TEXT,
    status TEXT DEFAULT 'Active'
);

-- Insert a default user (Password: admin123)
INSERT INTO users (username, password_hash) 
VALUES ('admin', 'pbkdf2:sha256:260000$829tY9p6$86d4e7...');
