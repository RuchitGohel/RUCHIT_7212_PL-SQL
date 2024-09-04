--invalid number exception

declare
 
	NO NUMBER(5);

BEGIN

	SELECT TO_NUMBER('0001A') INTO NO FROM DUALl;
	dbms_output.put_line(NO);

EXCEPTION

	when INVALID_NUMBER then
	dbms_output.put_line('Wrong data type/data conversion');
END:
/