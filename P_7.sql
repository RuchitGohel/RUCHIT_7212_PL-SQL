 declare

 nm result.name%type;
 s1 result.sub1%type;
 s2 result.sub2%type;
 s3 result.sub3%type;
 s4 result.sub4%type;
 s5 result.sub5%type;
 rn result.rollno%type:=&rn;
 t result.total%type;
 p result.per%type;
 g result.grade%type;

begin

 select name, sub1, sub2, sub3, sub4, sub5 into nm,s1,s2,s3,s4,s5 from result where rollno=rn;
 dbms_output.put_line('Name of the student is:'||nm);
 dbms_output.put_line('Sub1 marks:'||sub1);
 dbms_output.put_line('Sub2 marks:'||sub2);
 dbms_output.put_line('Sub3 marks:'||sub3);
 dbms_output.put_line('Sub4 marks:'||sub4);
 dbms_output.put_line('Sub5 marks:'||sub5);
 t:=s1+s2+s3+s4+s5;
 dbms_output.put_line('total is:'||t);
 update result set total=t where rollno=rn;
 p:=t/5;
 dbms_output.put_line('Percentage is:'||per);
 update result set per=p where rollno=rn;

 if p>90 then
	g:='A';
 elsif p>=80 and p<90 then
	g:='B';
elsif p>=70 and p<80 then
	g:='C';
elsif p>=60 and p<70 then
	g:='D';
elsif p>=50 and p<60 then
	g:='E';
elsif p>=40 and p<50 then
	g:='E-';
else
	g:='F';
end if;
dbms_output.put_line('Grade is:'||g);
update result set grade=g where rollno=rn;
END;
/