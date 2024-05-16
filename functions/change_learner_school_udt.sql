CREATE OR REPLACE FUNCTION changeLearnerSchool(learner_id INT, school_id INT) RETURNS VOID AS $$
BEGIN
    -- Check if the learner is currently linked to a school
    IF EXISTS (SELECT 1 FROM learner_school WHERE learner_school.learner_id = changeLearnerSchool.learner_id AND learner_school.current_school = TRUE) THEN
        -- Update the current school status to FALSE for the current school
        UPDATE learner_school
        SET current_school = FALSE
        WHERE learner_school.learner_id = changeLearnerSchool.learner_id AND learner_school.current_school = TRUE;
        
        -- Link the learner to the new school
        INSERT INTO learner_school (learner_id, school_id, current_school) VALUES (changeLearnerSchool.learner_id, changeLearnerSchool.school_id, TRUE);
    END IF;
END;
$$ LANGUAGE plpgsql;


