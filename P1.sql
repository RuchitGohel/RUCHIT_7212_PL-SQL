--Program 1
-- Arithmetic operations of two numbers

DECLARE

	no1 number := &no1;
	no2 number := &no2;
	ans number;
	
BEGIN

	ans := no1 + no2;
	dbms_output.put_line('Addition of no1 ans no2 is'||ans);
	
	ans := no1 - no2;
	dbms_output.put_line('Subtraction of no1 ans no2 is'||ans);
	
	ans := no1 * no2;
	dbms_output.put_line('Multiplication of no1 ans no2 is'||ans);
	
	ans := no1 / no2;
	dbms_output.put_line('Division of no1 ans no2 is'||ans);

end;
/


