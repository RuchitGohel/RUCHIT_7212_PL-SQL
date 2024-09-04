--System defined exception

declare

	SAL emp.salary%type;
	d emp.dept%type;

begin

	select salary into sal from EMP where dept='&d';
	dbms_output.put_line('Salary is:'||SAL);

exception

	when TOO_MANY_ROWS then
	dbms_output.put_line('More then one rows are selected for department:');
	when NO_DATA_FOUND then
	dbms_output.put_line('No records are found.');

end;
/
