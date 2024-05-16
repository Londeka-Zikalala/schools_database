CREATE OR REPLACE FUNCTION getSchoolsForLearner(learner_id INT) RETURNS TABLE(school_name VARCHAR) AS $$
BEGIN
    -- Return the names of all schools the learner has attended
    RETURN QUERY
    SELECT school.name
    FROM school
    JOIN learner_school ON school.id = learner_school.school_id
    WHERE learner_school.learner_id = getSchoolsForLearner.learner_id;
END;
$$ LANGUAGE plpgsql;


