-- HOUSE WORK
-- use a table named employees with the following structure:
-- EMLOYEE ID   FIRST NAME   LAST NAME     DEPARTMENT   SALARY  HIRE DATE
-- 1            JOHN         DOE           HR           50000   2019-04-23
-- 2            JANE         SMITH         IT           70000   2020-08-15
-- 3            ALICE        JOHNSON       IT           80000   2018-11-12
-- 4            BOB          BROWN         FINANCE      45000   2021-01-10
-- 5            CHARLIE      DAVIS         HR           55000   2022-05-05

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




-- ANSWER ONE. FINDING ALL EMPLOYEES IN THE IT DEPARTMENT
 --     SOLUTION
      
USE db_order;

CREATE TABLE tbl_employees  (
Employee_ID INT NOT NULL PRIMARY KEY,
First_Name VARCHAR (15),
Last_Name VARCHAR (15),
Department VARCHAR (10),
Salary INT,
Hire_Date DATE 

);

INSERT INTO tbl_employees VALUES(1,'John','Doe','HR',50000,'2019-04-23');
INSERT INTO tbl_employees VALUES(2,'Jane','Smith','IT',70000,'2020-08-15');
INSERT INTO tbl_employees VALUES(3,'Alice','Johnson','IT',80000,'2018-11-12');
INSERT INTO tbl_employees VALUES(4,'Bob','Brown','Finance',45000,'2021-01-10');
INSERT INTO tbl_employees VALUES(5,'Charlie','Davis','HR',55000,'2022-05-05');

SELECT * FROM tbl_employees
WHERE Department ='IT'

