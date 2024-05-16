This project covers the school database workshop tutorial 

For the database setup, Neon PostgreSQL was used. 
The db name is schools
the tables created : 
|Table Name|Columns |
|-----------|--------|
|grade	|id, name|
|school	|id, name, region|
|teacher	|id, first_name, last_name, email,school_id|
|subject	|id, name|
|subject_teacher|	subject_id, teacher_id|
|learner|	id, first_name, last_name, email, grade_id|
|learner_subject|	subject_id, learner_id|
|learner_school|	learner_id, school_id, current_school|

All the tables are prepopulated. The queries used and tables can be found in the sql folder

User defined functions are used to populate and create the tables to avoid repitition. These are found in the functions folder.

User defined types for the following tables:learner,school and subject  were created under the subfolder UDT's in the sql folder and were used to create the functions: find_subjects_udt, getLearnerScool,getLearnerCurrentSchool,getSchoolsForLearner and linkLearnerToSchool.

Example usage for all the functions can be found in function_tests file in the test folder.