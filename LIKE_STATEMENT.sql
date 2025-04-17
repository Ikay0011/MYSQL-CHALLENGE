-- LIKE STATEMENT
-- THE LIKE STATEMENT LOOKS FOR A SPECIFIC SEQUENCE WITHIN THAT COLUMN THAT YOU CAN SEARCH FOR IT DOESNT HAVE TO BE EXACT MATCH, AS LONG AS IT HAS THAT SPECIFIELD SEQUENCE THAT YOU PUT IN THERE, ANYWHERE WITHIN THAT CELL OR THE COLUMN

-- IN LIKE STATEMENT WE HAVE TWO SIGNS THE % SIGN AND THE _ SIGN THE % MEANS ANYTHING , WHILE THE UNDERSCORE MEANS A SPECIFIC VALUE
-- USING THE % SIGN 

SELECT *
FROM employee_demographics 
WHERE first_name LIKE'%er%'
-- THE TWO PERCENT SIGNS MEANS ANYTHING CAN THAT COMES BEFORE  AND ANYTHING THAT COMES AFTER, ALL WE'RE LOOKING FOR IS 'er' SOMEWHERE IN THE NAME

;


SELECT *
FROM employee_demographics 
WHERE first_name LIKE'JER%'
-- THIS MEANS THE FIRSTNAME STARTING WITH JER BUT THEN HAS ANYTHING AFTER IT DOESN'T MATTER WHAT IT'S AS LONG IT HAS JER AT THE VERY BEGINING IT'LL BE RETURNED
;
-- USING THE _ SIGN

-- USING TWO UNDERSCORELINE __ IT MEANS THE CHARACTERS STARTS WITH A  THAT HAS TWO CHARACTER OVER IT,  NO MORE, NO LESS
SELECT *
FROM employee_demographics 
WHERE first_name LIKE'A__'
;


-- USING THE UNDERSCORE LINE WITH THE PERCENT SIGN TOGETHER, TAKE INSTANCE (ANDY) AS EXAMPLE OF NAME .IT MEANS  THE NAME ANDY STARTING WITH A THEN PUT UR UNDERSCOLE LINE LIKE A__% WHICH MEANS THE OUTPUT WILL DISPLAY ANY NAMES THAT START WITH A AND HAS ANYHTING AFTER IT

SELECT *
FROM employee_demographics 
WHERE first_name LIKE'A___%'
;


-- USING IT IN DATE OF BIRTH ALSO
-- THIS SHOWS THE DATA OF BEN BECAUSE HE'S THE ONLY ONE BORN 1985
SELECT *
FROM employee_demographics 
WHERE birth_date LIKE'1985%'
;







