create table Back_Up (
    part_user varchar2(16),
    action varchar2(6),
    date_modified date,
    part_no number,
    part_name varchar2(20),
    in_stock number,
    part_price number,
    part_desc varchar2(50)
);


create or replace trigger auto_part
after insert or delete or update on part
for each row
declare
    action varchar2(20);
begin
    if inserting then
    action:='Insert';
    elsif deleting then 
    action:='Delete';
    else 
    action:='Update';
    end if;
    if inserting then
    insert into back_up values (user, action, sysdate, :new.part_no, :new.part_name, :new.in_stock, :new.part_price, :new.part_desc);
    else 
    insert into back_up values (user, action, sysdate, :old.part_no, :old.part_name, :old.in_stock, :old.part_price, :old.part_desc);
    end if;
end;
