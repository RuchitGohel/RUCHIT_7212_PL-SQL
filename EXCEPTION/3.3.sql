/*
3.3
*/

declare 
	sal number;

begin
 	select salary into sal from emp where ename = &ename;
	dbms_output.put_line('The salary is:' || sal);\

exception
	
	when NO_DATA_FOUND then
	dbms_output.put_line('No records are found for empno 10');

end;
/