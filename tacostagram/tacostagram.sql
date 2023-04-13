-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS users;

-- CREATE users TABLES

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  username TEXT
);

-- CREATE posts TABLES

CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  url TEXT,
  user_id INTEGER,
  created_at DATETIME
);

-- CREATE likes TABLES

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  user_id INTEGER
);

-- CREATE comments TABLES

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  user_id INTEGER,
  created_at DATETIME,
  content TEXT
);

-- CREATE followings TABLES

CREATE TABLE followings (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  following_user_id INTEGER,
  followed_user_id INTEGER,
  followed_at DATETIME
);