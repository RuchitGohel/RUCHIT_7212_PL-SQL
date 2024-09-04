/*
System defined exception
*/

declare
	sal number;

begin
	select BASICSAL into SAL from EMP where EMP_ID=10;
	dbms_output.put_line('The salary is:'||SAL);

exception
	when NO_DATA_FOUND then
	dbms_output.put_line('No records are found for empno 10');

END;
/	