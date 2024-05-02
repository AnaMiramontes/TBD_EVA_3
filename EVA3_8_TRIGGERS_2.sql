
delimiter $$

create trigger insertar_actor before insert on actor for each row 
begin
	declare actorid int;
    select generar_actor_id() into actorid;
    
    set new.actor_id = actorid;

end$$

delimiter ;