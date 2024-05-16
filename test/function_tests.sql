-- Usage of all functions

-- Add_teacher function 
SELECT add_teacher('Asher', 'Gamedze', 'asher@gamedze.com'); -- will return true
SELECT add_teacher('Nduduzo', 'Makhathin', 'nduduzo@makhathini.com'); -- will return false

-- changeLearnerSchool
SELECT changeLearnerSchool(1, 2);

-- create_subject

-- Will return false
select * from create_subject('Mathematics');
select * from create_subject('Accounting');
-- Will return true
select * from create_subject('English');

-- find_subjects
select * from find_subjects();
-- find_teachers_for_subject
SELECT * FROM find_teachers_for_subject('Mathematics');

-- find_teachers_teaching_multiple_subjects
SELECT * FROM find_teachers_teaching_multiple_subjects(1); -- Will return all the teachers
SELECT * FROM find_teachers_teaching_multiple_subjects(3); -- Will return Thabo Kos
-- getLearnerCurrentSchool
SELECT getLearnersCurrentSchool(1);
-- getSchoolsForLearner

SELECT * FROM getSchoolsForLearner(1);
-- linkLearnerToSchool
SELECT llink_learner_to_school(3, 3);
SELECT link_learner_to_school(4, 3);
-- link_teacher_to_subject
SELECT link_teacher_to_subject(1, 1);-- will return false
SELECT link_teacher_to_subject(2, 1);-- will return true