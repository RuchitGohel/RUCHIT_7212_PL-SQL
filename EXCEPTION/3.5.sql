/*
3.5 - 
*/

declare

	I number(3);
	VENO EMP1.EID%type;
	VENAME EMP1.SAL%type;
	VSAL EMP1.SAL%type;
	VDNO EMP1.DEPTNO%type;
	
	cursor CUR_EMP is select EID,ENAME,SAL from EMP1 where DEPTNO = &DEPTNO;
	NO_DEPT_FOUND exception;

begin

	I:=0;
	OPEN CUR_EMP;
	
	loop
	FETCH CUR_EMP into VENO,VENAME,VSAL;
	EXIT WHEN CUR_EMP%NOTFOUND;
	I:=I+1;
	dbms_output.put_line(VENO||' '||VENAME||' '||VSAL);
	insert into EMP_BACKUP VALUES (VENO,VENAME,VSAL);
	end loop;
	
	IF CUR_EMP%ROWCOUNT = 0 THEN
	close CUR_EMP;
	raise NO_DEPT_FOUND;
	end if;

	dbms_output.put_line('Total number of records inserted into EMP_BACKUP table are:'||I);
	close CUR_EMP;

exception

	WHEN NO_DEPT_FOUND THEN
	dbms_output.put_line('No records are found for given deptno');
	WHEN OTHERS THEN
	dbms_output.put_line('PL/SQL code encountered an error.');

end;
/