use employees;
show tables;

use db_test;

SELECT COUNT(*) FROM employees.employees;

CREATE TABLE Emp SELECT * FROM employees.employees ORDER BY RAND();
CREATE TABLE Emp_C SELECT * FROM employees.employees ORDER BY RAND();
CREATE TABLE Emp_Se SELECT * FROM employees.employees ORDER BY RAND();

SELECT * FROM Emp LIMIT 5;
show index from Emp;

ALTER TABLE Emp_C ADD PRIMARY KEY(emp_no);
show index from Emp_C;
SELECT * FROM Emp_C LIMIT 5;


ALTER TABLE Emp_Se ADD INDEX idx_emp_no(emp_no);
show index from Emp_Se;
SELECT * FROM Emp_Se LIMIT 5;

analyze table Emp, Emp_C, Emp_Se;

SHOW TABLE STATUS;

-- 1
EXPLAIN SELECT * FROM Emp WHERE emp_no = 100000;

-- 2, 1번과 실행 계획이 다른 이유는?
EXPLAIN SELECT * FROM Emp_C WHERE emp_no = 100000;

-- 아래 두개의 차이점은?
SELECT * FROM Emp_C WHERE emp_no = 100000;
SELECT * FROM Emp_Se WHERE emp_no = 100000;

SELECT * FROM Emp WHERE emp_no < 11000;
SELECT * FROM Emp_C WHERE emp_no < 11000;
SELECT * FROM Emp_C WHERE emp_no < 500000 LIMIT 1000000;
SELECT * FROM Emp_C IGNORE INDEX(PRIMARY) WHERE emp_no < 500000 LIMIT 1000000;
SELECT * FROM Emp_C LIMIT 1000000;

SELECT * FROM Emp_Se WHERE emp_no < 11000;



