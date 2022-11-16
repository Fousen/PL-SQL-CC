CREATE OR REPLACE PROCEDURE details (pn in number)  
AS  
v_name part.part_name%type; 
v_stock part.in_stock%type; 
v_price part.part_price%type; 
v_desc part.part_desc%type; 
BEGIN  
   select part_name,in_stock, part_price, part_desc into v_name, v_stock, v_price, v_desc  
   from part where part_no = pn;  
 
   DBMS_OUTPUT.PUT_LINE('Part no: ' || pn); 
   DBMS_OUTPUT.PUT_LINE('Part name: ' || v_name); 
   DBMS_OUTPUT.PUT_LINE('Part In Stock: ' || v_stock); 
   DBMS_OUTPUT.PUT_LINE('Part Price: ' || v_price); 
   DBMS_OUTPUT.PUT_LINE('Part description: ' || v_desc); 
END; 
