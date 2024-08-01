0--Program 3
-- Find out square and cube of user input number.
DECLARE

	no number := &no1;
	ans number;
	
BEGIN

	ans := no*no;
	dbms_output.put_line('Square of number is'||ans);
	
	ans := no*no*no;
	dbms_output.put_line('Cube of number is'||ans);
end;
/