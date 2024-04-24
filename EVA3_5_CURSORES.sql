delimiter $$

create procedure contar_actores_chafa(out conteo int)
begin
	declare terminar int default FALSE;
    declare val int;
	declare cons_actores cursor for select actor_id from actor;
    declare continue handler for not found 
		begin
			set terminar = true;
		end;
        
	open cons_actores;
    set conteo = 0;
    contar_a: loop
		fetch cons_actores into val;
        set conteo = conteo + 1;
			if terminar then
				leave contar_a;
			end if;
    end loop;
    
end$$

delimiter ;