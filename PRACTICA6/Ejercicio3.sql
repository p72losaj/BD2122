/*
Ejercicio 3
Implemente una funcionalidad que cuando se realicen nuevas consultas 
(o se modifiquen) a los votantes, valide que las nuevas consultas 
tengan una fecha valida (menor o igual que la fecha actual). 
Ademas, registre dicho cambio en la tabla de auditoria.
*/

create or replace trigger tr_3 before insert or update on consultas for each row
begin
    if :new.fecha > SYSDATE then
        insert into audit_table (datos,tabla) values ('La fecha ' || :new.fecha || ' no era valida y 
        se cambia por ' || SYSDATE,'consultas');
        :new.fecha := SYSDATE;
    end if;
end;

update consultas set fecha = '11/07/30' where idconsulta = 5;

select * from consultas where idconsulta = 5;