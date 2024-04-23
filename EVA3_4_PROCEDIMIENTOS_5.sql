DELIMITER $$
CREATE procedure INSERTAR_ACTOR
BEGIN 
    DECLARE resu INT;
    declare actorId int;
    SELECT MAX(actor_id) INTO actorId FROM actor;
    INSERT INTO actor (first_name, last_name) VALUES (nombre, apellidos);
    set resu = actorId +1;
    insert into actor(actor_id, first_name, last_name)
    value(resu, nombre, apellidos);
    RETURN resu;
END$$
DELIMITER ;
