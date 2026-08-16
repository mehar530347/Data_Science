USE college;
DROP TABLE student;
CREATE TABLE student(
 rollno INT PRIMARY KEY,
 name VARCHAR(20),
 marks INT,
 grade VARCHAR(20),
 city VARCHAR(20)
);

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",92,"F","Delhi");

INSERT INTO student
VALUES
(106,"farah",82,"A","Delhi");

SELECT name,marks
FROM student
WHERE marks>(SELECT AVG(marks) FROM student);

SELECT name,rollno
FROM student
WHERE rollno IN (SELECT rollno FROM student WHERE rollno%2=0);

SELECT MAX(marks)
FROM (SELECT marks FROM student WHERE city="Delhi") AS temp;
-- My SQL views
CREATE VIEW view1 AS
SELECT rollno,name,marks FROM student;
SELECT * FROM view1
WHERE marks >80;


















