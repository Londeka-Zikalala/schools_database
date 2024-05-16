--First step is to get the id's

-- Get the id's for the subjects
SELECT id, name FROM subject;

-- Get the id's for the teachers
SELECT id, first_name, last_name FROM teacher;
-- Link the teachers

-- Lindani Pani teaches Mathematics and Geography
insert into subject_teacher (subject_id, teacher_id) values (1, 1), (2, 1);

-- Siba Khumalo teaches Geography and History
insert into subject_teacher (subject_id, teacher_id) values (2, 2), (4, 2);

-- Thando Dlamini teaches Life Sciences and Consumer Studies
insert into subject_teacher (subject_id, teacher_id) values (3, 3), (5, 3);

-- Thandiswa Mazwayi teaches History and Accounting
insert into subject_teacher (subject_id, teacher_id) values (4, 4), (6, 4);

-- Nduduzo Makhathini teaches Consumer Studies and Economics
insert into subject_teacher (subject_id, teacher_id) values (5, 5), (7, 5);

-- Sandzile Nkosi teaches Accounting and Mathematics
insert into subject_teacher (subject_id, teacher_id) values (6, 6), (1, 6);

-- Thabo Kos teaches Economics, Life Sciences, Maths and Accounting
insert into subject_teacher (subject_id, teacher_id) values (7, 7), (3, 7), (1, 7), (6, 7);

