
-- the code for join_test_db database 


CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (NAME) VALUES ('admin');
INSERT INTO roles (NAME) VALUES ('author');
INSERT INTO roles (NAME) VALUES ('reviewer');
INSERT INTO roles (NAME) VALUES ('commenter');

INSERT INTO users (NAME, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', NULL),
('mike', 'mike@example.com', NULL);




RENAME TABLE codeup_test_db.users 
TO join_test_db.users;

TRUNCATE users;
TRUNCATE roles;


SET foreign_key_checks = 1;


INSERT INTO users (NAME, email, role_id) 
VALUES
('mary', 'mamay@example.com', 2),
('cindy', 'cinder@example.com', 2),
('ladonna', 'lado@example.com', 2),
('kelly', '@example.com',NULL);



SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;



SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;


SELECT users.name AS user_name, roles.name AS role_name
FROM users
INNER JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name, count(roles.name) AS role_qty
FROM users
RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY role_name
ORDER BY role_qty, role_name;



-- the code for employees database 


SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, e.emp_no, MAX(dm.to_date)
FROM employees AS e
JOIN dept_manager AS dm 
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
GROUP BY d.dept_name;


SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
JOIN dept_manager AS dm 
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date > now();






