-- HOUSE WORK
-- use a table named employees with the following structure:
-- EMLOYEE ID   FIRST NAME   LAST NAME     DEPARTMENT   SALARY  HIRE DATE
-- 1            JOHN         EMEKA           HR           50000   2019-04-23
-- 2            JANE         ADE             IT           70000   2020-08-15
-- 3            CHIDIMA     JOHNSON          IT           80000   2018-11-12
-- 4            ADEYEMI     BRIGHT           FINANCE      45000   2021-01-10
-- 5            DANIEL     NWACHUKWU         HR           55000   2022-05-05

# TASK:
-- Basic Filtering:

-- 1. Write a query to find all employees in the IT department.

-- 2. Multiple Conditions:

-- Find employees in the HR department who earn more than 50000.

-- 3. Pattern Matching (LIKE):

-- Retrieve employees whose first name starts with 'J'.

-- 4. Date Comparison:

-- List all employees who were hired before January 1, 2020.

-- 5. Using BETWEEN:

-- Get employees whose salaries are between 45000 and 70000.

-- 6. Using IN:

-- Select employees who work in either HR or Finance departments.

-- 7. Combining Conditions with AND/OR:

-- Find employees in the IT department OR employees who were hired after January 1, 2021.

-- 8 Write a query that shows all employees who Work in the IT department AND Were hired before 2020-01-01 OR Have a salary greater than 75000`
      
USE db_order;

CREATE TABLE tbl_employees  (
Employee_ID INT NOT NULL PRIMARY KEY,
First_Name VARCHAR (15),
Last_Name VARCHAR (15),
Department VARCHAR (10),
Salary INT,
Hire_Date DATE 

);

INSERT INTO tbl_employees VALUES(1,'John','Emeka','HR',50000,'2019-04-23');
INSERT INTO tbl_employees VALUES(2,'Jane','Ade','IT',70000,'2020-08-15');
INSERT INTO tbl_employees VALUES(3,'Chidima','Johnson','IT',80000,'2018-11-12');
INSERT INTO tbl_employees VALUES(4,'Adeyemi','Bright','Finance',45000,'2021-01-10');
INSERT INTO tbl_employees VALUES(5,'Daniel','Nwachukwu','HR',55000,'2022-05-05');

SELECT * FROM tbl_employees;


-- ANSWER 1. FINDING ALL EMPLOYEES IN THE IT DEPARTMENT
 --     SOLUTION

SELECT * FROM tbl_employees
WHERE Department ='IT' 

;


-- ANSWER 2. Find employees in the HR department who earn more than 50000.
        -- SOLUTION

SELECT * FROM tbl_employees
WHERE Department ='HR' AND Salary > 50000
;



-- ANSWER 3. Retrieve employees whose first name starts with 'J'.
    -- SOLUTION

SELECT * FROM tbl_employees
WHERE First_Name like 'J%' ;

-- ANSWER 4. List all employees who were hired before January 1, 2020.-- List all employees who were hired before January 1, 2020.
       -- SOLUTION
       
SELECT * FROM tbl_employees
WHERE Hire_Date < '2020-01-01'
;

-- ANSWER 5. Get employees whose salaries are between 45000 and 70000.
         -- SOLUTION
  
SELECT * FROM tbl_employees
WHERE Salary BETWEEN 45000 AND 70000
;
         

-- ANSWER 6. Select employees who work in either HR or Finance departments.
        -- SOLUTION
        
SELECT * FROM tbl_employees
WHERE  Department  IN  ('HR' ,'FINANCE')

;

-- ANSWER 7. Find employees in the IT department OR employees who were hired after January 1, 2021.
         -- SOLUTION
         
SELECT * FROM tbl_employees
WHERE  Department  = 'IT'OR  Hire_Date > '2021-01-01' 
;

-- ANSWER 8 .  Write a query that shows all employees who Work in the IT department AND Were hired before 2020-01-01 OR Have a salary greater than 75000
     -- SOLUTION
     
SELECT * FROM tbl_employees
WHERE Department =  'IT' AND (Hire_Date <'2020-01-01' OR Salary > 75000)
;






