CREATE OR REPLACE FUNCTION getLearnersCurrentSchool(learner_id INT) RETURNS VARCHAR AS $$
DECLARE
    school_name VARCHAR; 
BEGIN
    -- Select the name of the current school
    SELECT school.name INTO school_name
    FROM school
    JOIN learner_school ON school.id = learner_school.school_id
    WHERE learner_school.learner_id = getLearnersCurrentSchool.learner_id AND learner_school.current_school = TRUE;
    
    -- Return the school name
    RETURN school_name;
END;
$$ LANGUAGE plpgsql;


