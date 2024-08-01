/*
 Write a PL/SQL block that uses a cursor attribute 
%ISOPEN and %NOTFOUND to raise the basic salary 
of employees of department number 20 by 5% and 
also display the appropriate message based on the 
existence of the record in the EMP table. Whenever 
any such raise is given to the employees, a record for 
the same is maintained in the emp_update table. 
(Perform using both Implicit and Explicit Cursor)

*/

declare 

begin
	update emp set salary = salary + salary * 0.05 where deptno = 20;
	if SQL%NOTFOUND THEN
		dbms_output.put_line('NO record found');
	else
 		dbms_output.put_line(SQL%rowcount || 'record updated');
	end if;
end;
/