CREATE TABLE projects (
  id INTEGER PRIMARY KEY,
    title TEXT,
    category text,
    funding_goal real,
    start_date text,
    end_date text
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER
);

CREATE TABLE pledges (
  id INTEGER PRIMARY KEY,
    name TEXT,
    amount real,
    user_id INTEGER,
    project_id INTEGER
);
