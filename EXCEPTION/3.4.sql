/*
3. 4 - Write a plsql block to display the salary of that employee whose age is 50 years otherwise display appropriate message.

*/

declare
 	sal emp.salary%type;

begin
 	select salary into sal from emp where age=50;
	dbms_output.put_line('Salary is'||sal);

exception
	when NO_DATA_FOUND then
	dbms_output.put_line('no records found');
	when TOO_MANY_ROWS then
	dbms_output.put_line('Multiple records found');

end;
/