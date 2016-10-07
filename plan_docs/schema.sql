CREATE TABLE users (
  github_username,
  first_name,
  last_name,
  is_admin BOOLEAN NOT NULL DEFAULT false
);

CREATE TABLE posts (
  title VARCHAR(255),
  link TEXT,
  description TEXT,
  link_content_date DATE,
  -- author of post
  user_id INT NOT NULL,
  created_at DATETIME,
  updated_at DATETIME
);

CREATE TABLE comments (
  user_id,
  comment_text TEXT
  created_at DATETIME,
  updated_at DATETIME
);

CREATE TABLE likes (
  user_id INT,
  post_id INT,
  bookmark BOOLEAN NOT NULL DEFAULT false,
  like BOOLEAN NOT NULL DEFAULT false,
  vote ENUM('up','down') NULL
);

CREATE TABLE tags (
  name VARCHAR(255) NOT NULL,
  type ENUM('') NOT NULL,
  approved BOOLEAN NOT NULL DEFAULT false
);

CREATE TABLE post_tags (
  post_id INT NOT NULL,
  tag_id INT NOT NULL,
  user_id INT
);
