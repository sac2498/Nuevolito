CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL
);

CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id),
    name VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    initial_balance NUMERIC(15, 2) NOT NULL,
    color VARCHAR(7),
    currency VARCHAR(3) NOT NULL
);

CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id),
    account_id INTEGER NOT NULL REFERENCES accounts(id),
    amount NUMERIC(15, 2) NOT NULL,
    type VARCHAR(255) NOT NULL,
    date TIMESTAMPTZ NOT NULL,
    category VARCHAR(255),
    notes TEXT
);

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(id),
    name VARCHAR(255) NOT NULL
);

CREATE TABLE task_columns (
    id SERIAL PRIMARY KEY,
    project_id INTEGER NOT NULL REFERENCES projects(id),
    name VARCHAR(255) NOT NULL,
    "order" INTEGER NOT NULL
);

CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    column_id INTEGER NOT NULL REFERENCES task_columns(id),
    content TEXT NOT NULL,
    due_date TIMESTAMPTZ,
    completed BOOLEAN NOT NULL DEFAULT FALSE,
    "order" INTEGER NOT NULL
);

CREATE TABLE sub_tasks (
    id SERIAL PRIMARY KEY,
    task_id INTEGER NOT NULL REFERENCES tasks(id),
    content TEXT NOT NULL,
    completed BOOLEAN NOT NULL DEFAULT FALSE
);
