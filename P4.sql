-- Program - 4
-- Write a PL/SQL block to accept product name, qty 
--and price from user and then calculate discount in Rs. 
--based on the given(%)

DECLARE

	Product_name VARCHAR2(20) := '&Product_name';
	qty number := &qty;
	price number := &price;
	dis number := &dis;
	dis_rs number;
	final_amount number;
	
BEGIN

	dbms_output.put_line('Product name is ::'|| Product_name);
	dbms_output.put_line('Quantity is ::'|| qty);
	dbms_output.put_line('Price is ::'|| price);
	dbms_output.put_line('Discount percentage is ::'|| dis);
	dbms_output.put_line('Gross amount is ::'|| (price * qty) ||'Rs.');
	dis_rs := (qty * price) * (dis/100);
	dbms_output.put_line('Discount in rs is ::'|| dis_rs);
	final_amount := (qty * price) - dis_rs;
	dbms_output.put_line('Final amount is ::'|| final_amount);
	
end;
/