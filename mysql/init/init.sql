-- init.sql
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(32),
    email VARCHAR(255) UNIQUE,
    age INT,
    created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp
);

INSERT INTO users (name, email, age) VALUES
('Mike Rovert', 'mike@example.com', 30),
('Jane Smith', 'jane@example.com', 11),
('Michael Johnson', 'michael@example.com', 35),
('Emily Davis', 'emily@example.com', 28),
('Chris Wilson', 'chris@example.com', 32),
('Emma Taylor', 'emma@example.com', 27),
('Daniel Brown', 'daniel@example.com', 15),
('Olivia Martinez', 'olivia@example.com', 29),
('James Anderson', 'james@example.com', 8),
('Sophia Garcia', 'sophia@example.com', 31);
