//EXPLICIT CURSOR

declare
	cursor cl is select eid, ename, basicsal from EMP where DEPTNO = 20;
	ENO EMP.EID%type;
	ENM EMP.ENAME%type;
	SAL EMP.BASICSAL%type;
begin
	OPEN cl;
	LOOP
	FETCH cl into ENO,ENM,SAL;
	EXIT when cl%notfound;
	dbms_output.put_line('Emp number is'||ENO);
	dbms_output.put_line('Emp name'||ENM);
	dbms_output.put_line('Salary is'||SAL);
	end LOOP;
	CLOSE cl;
end;
/