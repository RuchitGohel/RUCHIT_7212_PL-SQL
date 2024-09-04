--ZERO DIVIDE EXCEPTION

decalre

	a number:=&a;
	b number:=&b;
	c number;

begin

	c:=a+b;
	dbms_output.put_line('Addition is'||c);
	c:=a*b;
	dbms_output.put_line('Multiplication is:'||c);
	c:=a/b;
	dbms_output.put_line('DIVISION is:'||c);

exception

	when zero_divide then
		dbms_output.put_line('Division by zero is not possible.');
	when invalid_number then
		dbms_output.put_line('Numbers are only allowed.');
end;
/