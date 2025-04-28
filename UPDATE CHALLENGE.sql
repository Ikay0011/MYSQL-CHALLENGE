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


                                              ⚠️ Disclaimer – Solve Before You Scroll!
--                                                 Hey there, awesome learner! 
--                                                 Before you scroll down to Row 109, I challenge you to first try solving the task yourself.

--                                                  The solution is already written from Row 200, but to truly learn and grow, give it your best shot --                                                  first. Don’t skip the challenge—practice makes progress! 💪

--                                                  Once you’ve tried your best, feel free to check Row 200 to compare your answer or learn a new --                                                 approach.

--                                                  You got this! 💡 Happy learning!


























































































































































#                Challenge 1 SOLUTION
#                 ANSWER 1    
       UPDATE  tbl_students_2025 
	   SET Age = 23 WHERE Student_ID = 1;
       
#                ANSWER 2
       UPDATE  tbl_students_2025
       SET Level = 200 WHERE Student_ID = 1;
        UPDATE  tbl_students_2025
       SET Level = 200 WHERE Student_ID = 2;
       
 #                 ANSWER 3
        UPDATE  tbl_students_2025 
        SET Email = 'Jumoke.adeyemi@gmail.com' WHERE Student_ID =2;
        
 #                 ANSWER 4
         UPDATE  tbl_students_2025 
         SET Gender = 'Other' WHERE Student_ID = 4;
         
 #                 ANSWER 5
          UPDATE  tbl_students_2025 
          SET Date_Joined = '2024-09-01' WHERE Student_ID IN (1, 2, 3, 4);
          
          
 #                Challenge 2 SOLUTION 
 #                 ANSWER 1
          SET SQL_SAFE_UPDATES = 0;
          UPDATE tbl_students_2025 SET Level = 300
          WHERE Age > 30;
          SET SQL_SAFE_UPDATES = 1;
          
 #                 ANSWER 2 
           UPDATE tbl_students_2025
           SET Email = CONCAT('Provide', Student_ID, '@gmail.com')
           WHERE Email IS NULL;
           
 #                 ANSWER 3 
            UPDATE tbl_students_2025
            SET Last_Name= 'Obi' WHERE Student_ID = 3;
            
 #                 ANSWER 4
           UPDATE tbl_students_2025
           SET Level = 'Final' WHERE First_Name IN ('Samuel', 'Jumoke');

 #                 ANSWER 5
           SET SQL_SAFE_UPDATES = 0;
           SET SQL_SAFE_UPDATES = 1;
           UPDATE tbl_students_2025
           SET Gender = 'M' WHERE Gender = 'Male';
           
 #                 ANSWER 5 B 
            UPDATE tbl_students_2025
            SET Gender = 'F' WHERE Gender = 'Female'; 
            
 #                 ANSWER 6
            SET SQL_SAFE_UPDATES = 0;
            UPDATE tbl_students_2025
            SET Email = CONCAT(LOWER(Full_Name), LOWER(Last_Name), '@gmail.com' )
            WHERE Level = 100;














