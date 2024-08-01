--program 7

declare
          nm marks.name%type;
	  s1 marks.sub1%type;
	  s2 marks.sub2%type;
	  s3 marks.sub3%type;
	  s4 marks.sub4%type;
	  s5 marks.sub5%type;
	  rn marks.rollno%type :=&rn;
	  
	  t number;
	  p number(3,1);
	  g char(1);
begin
     
          select name,sub1,sub2,sub3,sub4,sub5 into nm,s1,s2,s3,s4,s5 from marks where rollno = rn;
          dbms_output.put_line('student name is :'||nm);
	  dbms_output.put_line('1st subject mark is :'||s1);
	  dbms_output.put_line('2nd subject mark is :'||s2);
	  dbms_output.put_line('3rd subject mark is :'||s3);
	  dbms_output.put_line('4th subject mark is :'||s4);
	  dbms_output.put_line('5th subject mark is :'||s5);

          t :=s1+s2+s3+s4+s5;
   	  dbms_output.put_line('total mark are :'||t);
	  update marks set total = t where rollno = rn;
	  p :=t/5;
	  dbms_output.put_line('percentage is :'||p);
	  update marks set per = p where rollno = rn;

	  if p>90 then
	    g := 'A';
	  elsif p>80 and p<90 then
        g:='B';	  
	  elsif p>70 and p<80 then
        g:='C';	  
	  elsif p>60 and p<70 then
        g:='D';	  
	  elsif p>50 and p<60 then
        g:='E';	  
	  else 
	    g:='F';
	  end if;
  	  dbms_output.put_line('grade is :'||g);
	  update marks set grade = g where rollno = rn;
	
end;
/