This project covers the school database workshop tutorial 

For the database setup, Neon PostgreSQL was used. 
The db name is schools
the tables created : 
|Table Name|Columns |
|..........|........|
|grade	|id, name|
|school	|id, name, region|
|teacher	|id, first_name, last_name, email, school_id|
|subject	|id, name|
|subject_teacher|	subject_id, teacher_id|
|learner|	id, first_name, last_name, email, grade_id|
|learner_subject|	subject_id, learner_id|
|learner_school|	learner_id, school_id, current_school|

The teacher and subject tables are prepopulated and the subject_teacher table links both tables to assign a subject to a teacher. The queries and tables can be found in the sql folder

User defined functions are used to populate and create the tables to avoid repitition. These are found in the functions folder.