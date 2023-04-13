-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS leads;
DROP TABLE IF EXISTS logs;

-- CREATE employees TABLES

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

-- CREATE industries TABLES

CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT
);

-- CREATE companies TABLES

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  address TEXT,
  industry_id INTEGER
);

-- CREATE leads TABLES

CREATE TABLE leads (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  role TEXT,
  company_id INTEGER
);

-- CREATE logs TABLES

CREATE TABLE logs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  lead_id INTEGER,
  updated_at DATETIME,
  contact_mode TEXT,
  notes TEXT
);