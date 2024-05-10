-- create a computeaveragescoreforuser that stores the average store
DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser (user_id INT)
BEGIN
    DECLARE total_score INT DEFAULT 0;
    DECLARE projects_c INT DEFAULT 0;

    SELECT SUM(score)
        INTO total_score
        FROM corrections
        WHERE corrections.user_id = user_id;
    SELECT COUNT(*)
        INTO projects_c
        FROM corrections
        WHERE corrections.user_id = user_id;

    UPDATE users
        SET users.average_score = IF(projects_c = 0, 0, total_score / projects_c)
        WHERE users.id = user_id;
END $$
DELIMITER ;
