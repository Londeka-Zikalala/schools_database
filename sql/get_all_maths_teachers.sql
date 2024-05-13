-- get all the maths teachers
select 
    teacher.* 
from teacher
    join subject_teacher on teacher.id = subject_teacher.teacher_id
    join subject on subject_teacher.subject_id = subject.id
where 
    subject.name = 'Mathematics';