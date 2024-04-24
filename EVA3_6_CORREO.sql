DELIMITER $$

create procedure crear_email()
begin
    declare actor_id_val INT;
    declare last_name_val VARCHAR(255);
    declare email_val VARCHAR(255);
    declare done boolean default false;

    declare actor_cursor CURSOR FOR
        select actor_id, last_name FROM actor;
        
    DECLARE CONTINUE HANDLER FOR NOT FOUND
        SET done = TRUE;
		OPEN actor_cursor;
		SET done = FALSE;

    email_loop: LOOP
        FETCH actor_cursor INTO actor_id_val, last_name_val;
			IF done THEN
				LEAVE email_loop;
			END IF;
        SET email_val = CONCAT('e', actor_id_val, '.', last_name_val, '@prueba.com');
        SELECT email_val;

    end loop;
    close actor_cursor;
end$$

delimiter ;
