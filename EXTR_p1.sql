--Extra-Program-1
--Fetching record from table

DECLARE
 
 en emp.ename%type;
 dno emp.deptno%type;
 sal emp.basicsal%type;

BEGIN

select ename, deptno, basicsal into en, dno, sal from emp where eid= &eid;

dbms_output.put_line('Employee name is'|| en);
dbms_output.put_line('Employee dept no is'|| dno);
dbms_output.put_line('Employee salary is'|| sal);

end;
/