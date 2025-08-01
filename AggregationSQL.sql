create database Samples
use Samples
CREATE TABLE Stud(
reg_no INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
department VARCHAR(40) NOT NULL,
year INT NOT NULL);
INSERT INTO Stud(reg_no,name,department,year) VALUES 
(22073,'jeeva','AIDS',4),
(22502,'mani','CS',3),
(22503,'divish','IT',2),
(22079,'kumaran','ECE',1);
SELECT * FROM Stud;
UPDATE Stud
SET name='deva',
department='B.com',
year=5 WHERE reg_no=22073;

INSERT INTO Stud(reg_no,name,department,year)
VALUES (22082,'sanjay','EEE',3);

-- UPDATE Stud
-- SET name='sdfgh',
-- department='Agri',
-- WHERE reg_no=22502;

ALTER TABLE Stud
ADD phone_num VARCHAR(13);
UPDATE Stud 
SET phone_num='8903245830' WHERE reg_no=22073;

UPDATE Stud
SET phone_num='9073987839' WHERE reg_no=22079;

UPDATE Stud
SET phone_num='8736882682' WHERE reg_no=22502;

UPDATE Stud
SET phone_num='9742762887' WHERE reg_no=22082;

UPDATE Stud
SET phone_num='8779379390' WHERE reg_no=22503;


INSERT INTO Stud(reg_no,name,department,year,phone_num)
VALUES (22089,'pranesh','MECH',4,9079834893);

SELECT COUNT(*) AS tot_Student FROM Stud;

SELECT MAX(year) AS max_yr FROM Stud;

SELECT MIN(year) AS MIN_yr FROM Stud;

SELECT AVG(year) AS av_yr FROM Stud;

SELECT department,COUNT(*) AS department_count FROM Stud GROUP BY department;

SELECT department,MAX(year) AS max_yr FROM Stud
GROUP BY department;

SELECT * FROM Stud
ORDER BY year ASC;

SELECT * FROM stud
ORDER BY name;

SELECT UPPER(department)AS department_upper FROM Stud;

SELECT lower(department)AS department_low FROM Stud;

SELECT lower(name)AS name_low FROM Stud;

SELECT UPPER(name)AS name_upper FROM Stud;

SELECT LEFT(name,3) AS sort FROM Stud;

SELECT name,LENGTH(name) AS name_length FROM Stud;

SELECT CONCAT(name,'-',department) AS combine FROM Stud;

SELECT name,year,year+1 AS next_year FROM Stud;

SELECT reg_no,MOD(reg_no,2) AS odr FROM Stud;

ALTER TABLE Stud
ADD Date_Detail DATE;

UPDATE Stud SET Date_Detail='2005-08-01' WHERE reg_no=22073;
UPDATE Stud SET Date_Detail='2005-08-02' WHERE reg_no=22079;
UPDATE Stud SET Date_Detail='2005-08-03' WHERE reg_no=22082;
UPDATE Stud SET Date_Detail='2005-08-04' WHERE reg_no=22089;
UPDATE Stud SET Date_Detail='2005-08-05' WHERE reg_no=22502;
UPDATE Stud SET Date_Detail='2005-08-06' WHERE reg_no=22503;

SELECT CURDATE();

SELECT CURTIME();

SELECT reg_no,name,YEAR(Date_Detail) AS yr FROM Stud;