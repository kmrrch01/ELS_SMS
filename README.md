# Process for Adding Separate Tables for Classes and Visualizing Them:

## This README file outlines the steps necessary to create separate tables for each class from Grade 1 to Grade 12, including all their branches, and to alter the views of the software in order to visualize each class separately.

## Table Of Contents
    * Database Schema
    * Creating Tables for Each Grade
    * Altering Software Views
    * Testing the Setup

## Database Schema
    * The database schema provides a blueprint for creating the required tables and relationships. Make sure to review the schema file attached to this project to understand the existing structure and how to integrate the new tables.

## Creating Tables for Each Grade
    **Review the Existing Schema:**

    **Before making any changes, review the attached schema to understand the current structure.
    Identify the necessary columns and data types for each grade.**


## Create Tables for Grades 1 to 12:

    *For each grade, create a table with appropriate columns. Include columns for student information, class details, and any other relevant data.*

    ***Add Tables for Each Branch:**
            * If branches have specific requirements, create additional tables or columns to accommodate this. *

## Altering Software Views
    **Identify the Views to be Modified:**
        *Determine which parts of the software display class information and will need to be updated to reflect the new tables.*

    **Update View Logic:**
        *Modify the view logic to pull data from the new tables. Ensure that each class is visualized separately.*
    
    **Create Separate Views for Each Grade:**
        *Ensure that the UI has separate views or sections for each grade. This may involve creating new pages or updating existing ones.*
    
    **Test the Views:**
        *Test each view to ensure that data is being retrieved and displayed correctly.*
        *Verify that switching between grades and branches works as expected.*

    

##Addendum:##
    *We needed to change the schema of the tables concerning the different classes in order to accomodate for the different terms that the school undergoes throughout the school year (T1, T2, and T3) as well as the specific processes that will occur within each class (Homework assignment, quiz, exam etc..)*
    *You will find attached in the push to this version of the software a schema containing the new required tables for the Elementary Department of the school, that being from Grade 1 and until Grade 6. The rest of the tables for Intermediate, Official, Highschool and Kindergarten departments will follow shortly after testing is completed.*

    *The design is as follows: Each class gets 3 tables per subject per term (e.g grade_1_englishT1, grade_1_englishT2 etc .. ). In the Elementary Department, thus, we will obtain 15 tables per class, around 90 tables all inclusive.*
        > Class + Subject + Term <= schema for each class. 

        Grade 1 : 
            => Math Term 1 / Term 2 / Term 3 
            => English Term 1 / Term 2 / Term 3
            => Arabic Term 1 / Term 2 / Term 3
            => Science Term 1 / Term 2 / Term 3 
            => Religion Term 1 / Term 2 / Term 3 
        Grade 2 :
        . 
        .
        .
        .
        . etc...



    **Of course each of these tables requires its own model to define the protected $table variable and the allowed columns. Then, we reference the model in the Student.php controller, and utilize the new initialized model to insert the student into the grade which matches its name through the loop that reads class names and adds students accordingly. In that way, example if a student is registered for Grade 1, they will be inserted into the Grade 1 table (using this as master, do not delete.) as well as the Math (T1,T2,T3), English(T1,T2,T3), Science(T1,T2,T3), Arabic(T1,T2,T3) and Religion(T1,T2,T3).**

    **This will allow us to separate the student grade and mark evaluation details in a much more refined way than keeping all the subjects stored in a single table. Please, make sure to upload the new schema as well as the required Models, and the newly configured Student.php Model in order to see this new functionality. Simply add a student to any of the Elementary classes (1-6) and validate that they were added into all the respective tables for their class.**




## Conclusion
    *Following these steps will help you create separate tables for each class from Grade 1 to Grade 12 and modify the software views to visualize each class separately. Be sure to thoroughly test each step to ensure everything functions correctly.**

**For further assistance, refer to the database schema attached to this project and the software documentation.**
