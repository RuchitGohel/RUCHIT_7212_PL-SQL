--System defind exception

declare
	id emp.emp_id%type;
	name emp.emp_name%type;
	sal emp.salary%type;

begin
	select emp_name, salary into name, sal from EMP where EMP_ID='&id';
	dbms_output.put_line('The name is:'|| name);
	dbms_output.put_line('The salary is:'|| sal);

exception

	when NO_DATA_FOUND then
	dbms_output.put_line('No records are found.');
	when invalid_number then
	dbms_output.put_line('Invalid value');

end;
/