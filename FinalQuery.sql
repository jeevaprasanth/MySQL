CREATE DATABASE Employee
use Employee
CREATE TABLE Emp(
emp_id INT PRIMARY KEY,
name VARCHAR(130) NOT NULL,
department VARCHAR(140) NOT NULL,
experience INT NOT NULL);


INSERT INTO Emp(emp_id,name,department,experience) VALUES
(12345,'Jeeva','AI&DS',5),
(12344,'Mani','ECE',3),
(12343,'Deva','CSE',6);
SELECT * FROM Emp;

UPDATE Emp
SET name='Salem Mani',
department='MECH',
experience=10 WHERE emp_id=12344;

INSERT INTO Emp(emp_id,name,department,experience)
VALUES (22082,'sanjay','EEE',3);

ALTER TABLE Emp
ADD salary VARCHAR(10);
UPDATE Emp
SET salary= '20000' WHERE emp_id=12343;

UPDATE Emp
SET salary= '40000' WHERE emp_id=12344;

UPDATE Emp
SET salary= '1000000' WHERE emp_id=12345;

UPDATE Emp
SET salary= '80000' WHERE emp_id=22082;

INSERT INTO Emp(emp_id,name,department,experience,salary)
VALUES (12354,'Sridhar','AI&ML',7,100000);

ALTER TABLE Emp
ADD phone_num VARCHAR(10);
UPDATE Emp
SET phone_num= '8903245730' WHERE emp_id=12343;

UPDATE Emp
SET phone_num= '9073983900' WHERE emp_id=12344;

UPDATE Emp
SET phone_num= '6589238939' WHERE emp_id=12345;

UPDATE Emp
SET phone_num= '8987387399' WHERE emp_id=12354;

UPDATE Emp
SET phone_num= '8903245730' WHERE emp_id=22082;

ALTER TABLE Emp
ADD position VARCHAR(50);
UPDATE Emp
SET position= 'MERN Developer' WHERE emp_id=12343;

UPDATE Emp
SET position= 'Python Developer' WHERE emp_id=12344;

UPDATE Emp
SET position= 'MERN Developer & UI/UX Designer' WHERE emp_id=12345;

UPDATE Emp
SET position= 'Data Analyst' WHERE emp_id=12354;

UPDATE Emp
SET position= 'Product Designer' WHERE emp_id=22082;