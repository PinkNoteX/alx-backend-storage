-- 
DROP PROCEDURE IF EXISTS AddBonus;
DELIMITER $$
CREATE PROCEDURE AddBonus (user_id INT, project_name VARCHAR(255), score FLOAT)
BEGIN
    DECLARE project_count INT DEFAULT 0;
    DECLARE project_id INT DEFAULT 0;

    SELECT COUNT(id)
        INTO project_c
        FROM projects
        WHERE name = project_n;
    IF project_c = 0 THEN
        INSERT INTO projects(name)
            VALUES(project_n;
    END IF;
    SELECT id
        INTO project_id
        FROM projects
        WHERE name = project_n;
    INSERT INTO corrections(user_id, project_id, score)
        VALUES (user_id, project_id, score);
END $$
DELIMITER ;
