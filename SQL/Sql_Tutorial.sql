CREATE DATABASE college;
USE college;
CREATE TABLE student(
  roll_no INT,
  name VARCHAR(30),
  age INT
);
INSERT INTO student
VALUES
(101,"ADAM",12),
(102,"BOB",14);

SELECT * FROM student;
DROP DATABASE college;
CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE user(
   id INT PRIMARY KEY,
   age INT,
   name VARCHAR(30) NOT NULL,
   email VARCHAR(50) UNIQUE,
   followers INT DEFAULT 0,
   following INT,
   CONSTRAINT age_check CHECK (age>=13)
);
INSERT INTO user
(id,age,name,email,followers,following)
VALUES
(1,14,"adam","adam@gmail.com",123,234),
(2,16,"bob","bob@gmail.com",432,543),
(3,17,"casey","casey@gmail.com",300,325);

SELECT DISTINCT age FROM user;
SELECT id,age,name FROM user
WHERE followers>=200;
SELECT * FROM user
WHERE followers>=200;
SELECT age FROM user
WHERE age>14
LIMIT 1;
SELECT name,age,followers FROM user
ORDER BY followers ASC;
SELECT COUNT(age) FROM user
WHERE age=14;
SELECT age, COUNT(id) FROM user
GROUP BY(age);
SELECT age, max(followers) FROM user
GROUP BY(age);
SELECT age, max(followers) FROM user
GROUP BY(age)
HAVING max(followers)>100;


DROP TABLE posts;
CREATE TABLE posts(
 id INT  PRIMARY KEY,
 content VARCHAR(100),
 user_id INT,
 FOREIGN KEY (user_id) REFERENCES user(id)
);

