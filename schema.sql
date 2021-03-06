CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT UNIQUE,
    password TEXT,
    user_role TEXT
);
CREATE TABLE subforums (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE
);
CREATE TABLE topics (
    id SERIAL PRIMARY KEY,
    subject TEXT,
    user_id INTEGER REFERENCES users,
    subforum_id INTEGER REFERENCES subforums
);
CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    content TEXT,
    sent_at TIMESTAMP,
    visible INTEGER,
    topic_id INTEGER REFERENCES topics,
    user_id INTEGER REFERENCES users
);
