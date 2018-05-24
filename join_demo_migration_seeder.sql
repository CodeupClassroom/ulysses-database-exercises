USE codeup_test_db;

# 1 to 1 relationship is like username to password..
# 1 to 1 related columns should live on the same table as eachother

# 1 to Many
# One user has many posts (or could have many posts)
# Any given post belongs to one and only one user (author)
# The "Many" table has the foreign key that points to the ONE table's primary key

DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);


CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(255),
  user_id INT UNSIGNED,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);


INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', NULL),
  ('jane', 'jane@example.com', 2),
  ('mike', 'mike@example.com', 1);

INSERT INTO posts (title, user_id) VALUES
  ('Hello World', 3),
  ('Goodbye World', NULL),
  ('JS Rocks ZOMG JS', 2),
  ('Jquery is pretty ok...', 2),
  ('npm is trickier...', 6),
  ('Java is my favorite!!!', 3),
  ('IntelliJ is A-OK', 5);


