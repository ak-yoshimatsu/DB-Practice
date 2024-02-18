-- usersテーブルの作成
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(32) NOT NULL,
    email VARCHAR(255)  NOT NULL UNIQUE,
    age INT default NULL,
    created_at datetime default current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp
);

-- usersテーブルに初期データ挿入
INSERT INTO users (name, email, age) VALUES
('Mike Rovert', 'mike@example.com', 30),
('Jane Smith', 'jane@example.com', 11),
('Michael Johnson', 'michael@example.com', 35),
('Emily Davis', 'emily@example.com', 28),
('Chris Wilson', 'chris@example.com', 32),
('Emma Taylor', 'emma@example.com', NULL),
('Daniel Brown', 'daniel@example.com', 15),
('Olivia Martinez', 'olivia@example.com', 40),
('James Anderson', 'james@example.com', 8),
('Sophia Garcia', 'sophia@example.com', 31);


-- postsテーブルの作成
CREATE TABLE IF NOT EXISTS posts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    user_id INT,
    created_at TIMESTAMP DEFAULT current_timestamp,
    updated_at datetime default current_timestamp on update current_timestamp,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- postsテーブルに初期データ挿入
INSERT INTO posts (title, content, user_id) VALUES
('titleA', 'contentsAcontentsAcontentsAcontentsAcontentsAcontentsAcontentsA', 8),
('titleB', 'contentsBcontentsBcontentsBcontentsBcontentsBcontentsBcontentsB', 8),
('titleC', 'contentsCcontentsCcontentsCcontentsCcontentsCcontentsCcontentsC', 8),
('titleD', 'contentsDcontentsDcontentsDcontentsDcontentsDcontentsDcontentsDcontentsD', 4);
