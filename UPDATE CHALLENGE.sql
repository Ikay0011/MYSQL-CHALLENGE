-- UPDATE
-- UPDATE IN MYSQL COMMAND IS A DML WHICH STANDS FOR (DATA MANIPULATION LANGUAGE) STATEMENT. IT'S USED TO MANIPULATE THE DATA OF ANY EXISTING COLUMN. BUT CAN'T CHANGE THE TABLE'S DEFINATION

--  UPDATE COMMAND WILL ONLY PERFORM THE ACTION ON THE DATA LEVEL
--  UPDATE COMMAND IS USED TO UPDATE EXISTING RECORDS IN A DATABASE
--  UPDATE COMMAND MAKE CHANGES WITH DATA INSIDE THE TABLE
--  UPDATE COMMAND SET SPECIFIED VALUE IN THE COMMAND TO THE ROWS, THIS MEANS WHEN YOU UPDATE YOU'RE MANUALLY SETTING THE VALUES IN EXISTING ROWS, YOU CAN CONTROL EXACTLY WHICH VALUES GO INTO WHICH COLUMNS FOR THE ROW YOU CHOOSE.
--       EXAMPLE
-- UPDATE students SET email = 'JOHN@gmail.com' WHERE id = 1;
-- AFTER UPDATING
-- ID     NAME     AGE     EMAIL
-- 1      JOHN     25      JOHN@gmail.com
-- 2      OKOYA    45      NULL

--         SUMMARY 
--       COMMAND     CHANGES STRUCTURE OR DATA            .  DEFAULT VALUE AFFECTED            . YOU CONTROL THE VALUE
--         ___________________________________________________________________________________________________________
--	     UPDATE   --    DATA( ROW VALUE )                  -- NO DEFAULT CHANGE               --    YES YOU SET THEM
--

--                 UPDATE – Modifying DATA
--                 Common Keys (Keywords) Used with UPDATE:

-- Keyword	         What It Does	                                 Example
-- UPDATE	         Starts the command to update data	             UPDATE students
-- SET	             Specifies the column(s) and new value(s)	     SET age = 20
-- WHERE	         Filters which row(s) to update	                 WHERE name = 'JOHN'
-- AND, OR	         Adds conditions to the WHERE clause	         WHERE age > 18 AND name = 'James'

--     QUICK TIP!
-- If you forget the WHERE clause in an UPDATE, all rows will be updated — so be careful!


-- ____________________________________________________________________________________________________________________________________







