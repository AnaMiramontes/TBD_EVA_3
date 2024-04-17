delimiter $$
create function factorial(num int)
returns int deterministic
begin
	declare resu int;
    declare cont int;
    set cont = 1;
    set resu = 1;
    
    factorial: loop
		if cont <= num then
            set resu = resu * cont;
            set cont = cont +1;
        else
			leave factorial;
		end if;
    end loop factorial;
    
return resu;
end$$
delimiter ;