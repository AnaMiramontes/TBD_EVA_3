delimiter //

CREATE PROCEDURE contar_apellidos (IN apellido_actor VARCHAR(255), OUT cantidad_actores INT)
BEGIN
    SELECT COUNT(*) INTO cantidad_actores FROM actor
    WHERE last_name = apellido_actor;
END//

delimiter ;

