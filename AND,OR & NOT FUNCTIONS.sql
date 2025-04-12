-- AND OR NOT-- LOGICAL OPERATORS

-- AND FUNCTIONS
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender= 'MALE'
;

-- OR FUNCTIONS
SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender= 'MALE'
;

SELECT *
FROM employee_demographics
WHERE birth_date >'1985-01-01'
OR NOT gender = 'MALE'

;

-- USING WHERE WITH AND

SELECT *
FROM employee_demographics
WHERE (first_name ='lESLIE' AND age =44) OR age> 55
;


SELECT *
FROM employee_demographics

