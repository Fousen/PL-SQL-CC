 begin
 dbms_output.put_line('ALL THE DETAILS OF TABLE ARE:');
 for i in (select * from part)
 loop
 dbms_output.put_line('NUMBER = ' || i.part_no);
 dbms_output.put_line('NAME = ' || i.part_name);
 dbms_output.put_line('STOCK =' || i.in_stock);
 dbms_output.put_line('PRICE = ' || i.part_price);
 dbms_output.put_line('DESCRIPTION = '||i.part_desc);
 end loop;
 end;
