create function regresa_mensaje(mensaje varchar(50))
returns varchar(100) deterministic
return concat("HOLA", mensaje);
