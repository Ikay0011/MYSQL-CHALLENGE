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



#               UPDATE Challenge Set:	
#                Challenge 1

#             1. Change Ada Okafor’s age to 23.
#                (Hint: Use her First_Name and Last_Name in the WHERE clause.)

#             2. Update all female students to have the Level column set to '200'.
#                 (Assuming you already added the Level column earlier.)

#             3. Add an email for Jumoke Adeyemi: jumoke.adeyemi@gmail.com

#             4. Change Samuel Femi’s Gender to 'Other'.

#             5. Set the Date_Joined for all students to '2024-09-01'




#                Challenge 2

#             1. Update the Level to '300' for any student older than 30

#             2. Set the Email to 'not_provided@example.com' for students who have NULL in their email.

#             3. Change Chidi Nwankwo’s name to Chidi Obi.
#              (You're updating the surname column to 'Obi')

#             4. Update the Level to 'Final' for all students whose First_Name is either Samuel or Jumoke.
#                (Hint: Use the IN keyword)

#             5. Change all Gender values from 'Male' to 'M' and 'Female' to 'F'.
#                (You’ll need two separate UPDATE statements.)

#             6. For all students whose Level is '100', add this email format if it's NULL:
#                 <first_name>.<last_name>@school.com
#                 ➡️ Example: chidi.nwankwo@school.com
#                  (Hint: You’ll need CONCAT() and LOWER() — let me know if you want the full query logic for this one!)











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
            
 
 
 
 
           
SELECT CONCAT(Full_Name, ' ', Last_Name) AS FULL_NAME FROM tbl_students_2025 ;

SELECT CONCAT(UPPER(Full_Name), ' ', UPPER(Last_Name) ) AS NEW_NAME FROM tbl_students_2025;


           
 
           
       
	
 
 
          
          
          
		  
       
	
      
           
           
           
        
DESCRIBE tbl_students_2025;
SELECT * FROM tbl_students_2025;
SELECT * FROM tbl_course;
SELECT * FROM tbl_student; 
DESC tbl_course;


































