-- For Lindani Pani 
SELECT subject.*
FROM subject
JOIN subject_teacher ON subject.id = subject_teacher.subject_id
JOIN teacher ON subject_teacher.teacher_id = teacher.id
WHERE teacher.first_name = 'Lindani' AND teacher.last_name = 'Pani';

-- For Thandiswa Mazwayi
SELECT subject.*
FROM subject
JOIN subject_teacher ON subject.id = subject_teacher.subject_id
JOIN teacher ON subject_teacher.teacher_id = teacher.id
WHERE teacher.first_name = 'Thandiswa' AND teacher.last_name = 'Mazwayi';

-- teachers with a specified number of subjects, all teachers that teach more than 3 subjects wirll be returned. (Thabo Kos will return with a couhnt of 4 subjects)
select 
   teacher.first_name, teacher.last_name, teacher.email, count(*)  
from teacher
    join subject_teacher on teacher.id = subject_teacher.teacher_id
    join subject on subject_teacher.subject_id = subject.id
group by 
   teacher.first_name, teacher.last_name, teacher.email
having count(*) > 3;