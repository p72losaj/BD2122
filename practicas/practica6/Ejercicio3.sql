/*
Implemente una funcionalidad que cuando se realicen nuevas consultas (o se modifiquen) a los votantes,
valide que las nuevas consultas tengan una fecha valida
(menor o igual que la fecha actual). Ademas, registre
dicho cambio en la tabla de auditor?a.
*/

set serveroutput on
create or replace trigger tr_3 before insert or update on consultas for each row
begin 
    if :new.fecha > SYSDATE then
        insert into audit_table (datos,tabla) 
            values ('La fecha ' || :new.fecha || ' no es valida. Se sustituye por ' || SYSDATE,'consultas');
        :new.fecha := SYSDATE;
    else insert into audit_table (datos,tabla) values ('La fecha ' || :new.fecha || ' es valida. Se sustituye la fecha ' 
                                                        || :old.fecha || ' por la fecha ' || :new.fecha, 'consultas');
    end if;
end;