CREATE OR REPLACE FUNCTION find_teachers_teaching_multiple_subjects(
    num_subjects INT
)
RETURNS TABLE (
    teacher_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255)
) AS
$$
BEGIN
    -- Return teachers teaching the specified number of subjects or more
    RETURN QUERY
    SELECT 
        teacher.id AS teacher_id, -- Select the teacher's ID
        teacher.first_name,       -- Select the teacher's first name
        teacher.last_name,        -- Select the teacher's last name
        teacher.email             -- Select the teacher's email
    FROM 
        teacher
    JOIN 
        subject_teacher ON teacher.id = subject_teacher.teacher_id
    GROUP BY 
        teacher.id               -- Group the results by teacher ID
    HAVING 
        COUNT(DISTINCT subject_teacher.subject_id) > find_teachers_teaching_multiple_subjects.num_subjects; -- Filter teachers by counting the subject they are linked tom only once
END;
$$
LANGUAGE plpgsql;
SELECT * FROM find_teachers_teaching_multiple_subjects(1); -- Will return all the teachers
SELECT * FROM find_teachers_teaching_multiple_subjects(3); -- Will return Thabo Kos

