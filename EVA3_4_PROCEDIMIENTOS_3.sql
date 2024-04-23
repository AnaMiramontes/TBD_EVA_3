delimiter $$

create procedure contar_actores(out cant int)
begin
	select count(*) into cant from actor;
end$$

delimiter ;