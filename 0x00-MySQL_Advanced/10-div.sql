-- create safediv that divides the first by the second num 
DROP FUNCTION IF EXISTS SafeDiv;
DELIMITER $$
CREATE FUNCTION SafeDiv (a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE r FLOAT DEFAULT 0;

    IF b != 0 THEN
        SET r = a / b;
    END IF;
    RETURN r;
END $$
DELIMITER ;
