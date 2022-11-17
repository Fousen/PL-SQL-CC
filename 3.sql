begin
update part set part_price = 250 where in_stock < 16;
end;
select * from part;
