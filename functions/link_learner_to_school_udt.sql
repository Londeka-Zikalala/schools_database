CREATE OR REPLACE FUNCTION link_learner_to_school(learner_id INT, school_id INT) RETURNS VOID AS $$
BEGIN
    -- Check if the learner is already linked to a school
    IF NOT EXISTS (SELECT 1 FROM learner_school WHERE learner_school.learner_id = link_learner_to_school.learner_id AND learner_school.current_school = TRUE) THEN
        -- Link the learner to the new school
        INSERT INTO learner_school (learner_id, school_id, current_school) VALUES (learner_id, school_id, TRUE);
    END IF;
END;
$$ LANGUAGE plpgsql;

