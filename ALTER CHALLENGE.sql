-- ALTER 
-- ALTER IN MYSQL COMMAND IS A DDL, WHICH STANDS FOR (DATA DEFINITION LANGUAGE) STATEMENT. ALTER IS USED TO UPDATE THE STRUCTURE OF THE TABLE IN THE DATABASE E.G ( LIKE, ADD, DELETE, MODIFY THE ATTRIBUTE OF THE TABLE IN THE DATABASE)

-- ALTER COMMAND WILL ONLY PERFORM THE ACTION ON STRUCTURE LEVEL AND NOT ON THE DATA LEVEL
-- ALTER COMMAND IS USED TO ADD, DELETE, MODIFY THE ATTRIBUTES OF THE RELATIONS(TABLES) IN THE DATABASE
-- ALTER COMMAND MAKE CHANGES WITH TABLE STRUCTURE
-- ALTER COMMAND BY DEFAULT INITIALIZES VALUESOF ALL THE TUPLE (ROW) ALL EXISTING ROWS (TUPLES) IN THE TABLE WILL HAVE THE NEW COLUMN SET TO NULL BY DEFAULT. 
--        EXAMPLE
-- ALTER TABLE students ADD email VARCHAR(100);
-- BEFORE ADDING
-- ID     NAME     AGE
-- 1      JOHN     25
-- 2      OKOYA    45

-- AFTER ADDING
-- ID     NAME     AGE     EMAIL
-- 1      JOHN     25      NULL
-- 2      OKOYA    45      NULL

-- ALL ROWS NOW HAVE NULL IN THE EMAIL COLUMN BECAUSE NO VALUE WAS SPECIFIED


--         SUMMARY 
--       COMMAND     CHANGES STRUCTURE OR DATA            .  DEFAULT VALUE AFFECTED            . YOU CONTROL THE VALUE
--         ___________________________________________________________________________________________________________
--	     ALTER   --  TABLE STRUCTURE( COLUMNS )             -- NEW COLUMN = NULL           --    NO UNLESS YOU SET DEFAULT
--				

--                 ALTER – Modifying Table Structure
--                 Common Keys (Keywords) Used with ALTER:
               
-- Keyword	         What It Does	                                          Example
-- ALTER TABLE	     Starts the command to modify a table	                  ALTER TABLE students ...
--  ADD	             Adds a new column	                                      ADD email VARCHAR(255)
--  DROP	         Removes a column	                                      DROP COLUMN age
--  MODIFY      	Changes the data type or attributes of a column	          MODIFY age TINYINT
--  CHANGE	        Renames a column and can also change type	              CHANGE name full_name VARCHAR(100)
--  RENAME TO	    Renames the entire table	                              RENAME TO learners

-- ____________________________________________________________________________________________________________________________________


 
#               ALTER TABLE Challenge:
#                Challenge 1
#                1. Rename the column surname to Last_Name.
#                2. Add a new column called Email with a data type of VARCHAR(100)
#                3. Modify the Gender column to have a data type of ENUM('Male', 'Female', 'Other');
       
       
#                 Challenge  2: Intermediate ALTER Table Tasks
#                 1. Change First_Name to Full_Name and update its data type to VARCHAR(100)
#                 (Hint: You're preparing for future use where full names might be stored in that column.)

#                 2. Add a column named Date_Joined that stores the date a student joined (Use data type DATE.)

#                 3. Modify the Student_ID column to be an AUTO_INCREMENT primary key
#                 (Assume you're creating a rule where IDs should be automatically generated.)

#                 4. Add a new column Level with data type VARCHAR(10) and default value '100'


#                Challenge 3: Clean Up & Optimize
#                1. Drop the Gender column completely
#                (Imagine you’re collecting gender differently now.)

#                2. Rename the entire table from tbl_practice_student to students_2025

#                3. Change the Last_Name column to allow NULL values (if it doesn’t already)

#                4. Set a UNIQUE constraint on Email column
#                (So no two students can register with the same email.)


                                              ⚠️ Disclaimer – Solve Before You Scroll!
--                                                 Hey there, awesome learner! 
--                                                 Before you scroll down to Row 109, I challenge you to first try solving the task yourself.

--                                                  The solution is already written from Row 200, but to truly learn and grow, give it your best shot --                                                  first. Don’t skip the challenge—practice makes progress! 💪

--                                                  Once you’ve tried your best, feel free to check Row 200 to compare your answer or learn a new --                                                 approach.

--                                                  You got this! 💡 Happy learning!




















































































































#                Challenge 1 SOLUTION
#                 ANSWER 1    
       ALTER TABLE tbl_practice_student 
	   RENAME COLUMN surname TO Last_Name;
       
#                ANSWER 2     
        ALTER TABLE tbl_practice_student 
        ADD Email VARCHAR(100);
        
 #                 ANSWER 3 
         ALTER TABLE tbl_practice_student
         MODIFY Gender ENUM ('Male', 'Female', 'Other');
         
         
 #                Challenge 2 SOLUTION 
 #                 ANSWER 1
          ALTER TABLE tbl_practice_student
          RENAME COLUMN First_Name TO Full_Name;
          
#                ANSWER 2         
         ALTER TABLE tbl_practice_student
         ADD COLUMN Date_Joined DATE;
         
#                ANSWER 3
          ALTER TABLE tbl_practice_student
          MODIFY Student_ID INT AUTO_INCREMENT;
          
#                ANSWER 4     
          ALTER TABLE tbl_practice_student
          ADD COLUMN Level varchar(10) DEFAULT '100';
          
 #                Challenge 3 SOLUTION
 #                 ANSWER 1 
          ALTER TABLE tbl_practice_student
          DROP COLUMN Gender;

#                ANSWER 2
          ALTER TABLE Students_2025
          RENAME TO tbl_Students_2025;
          
#                ANSWER 3
          ALTER TABLE tbl_Students_2025
          MODIFY Last_Name VARCHAR (20) NULL;

#                ANSWER 4  
          ALTER TABLE tbl_Students_2025
          ADD UNIQUE (Email);
  
          

          
          
          
          
          


          
          
          
          
          
          
          
          
          
          


         
         

         
         
         
         
         

 
 
       





SELECT * FROM tbl_practice_student;




