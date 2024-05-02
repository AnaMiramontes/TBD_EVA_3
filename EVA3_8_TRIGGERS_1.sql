delimiter $$

create function generar_actor_id()
returns int reads sql data
begin
    declare actorid int;
    declare resu int;
    select count(*) into resu from actor;
    if resu = 0 then
        set resu = 1;
    else
        select max(actor_id) into actorid from actor;
        set resu = actorid + 1;
    end if;

    return resu;
end$$

delimiter ;
