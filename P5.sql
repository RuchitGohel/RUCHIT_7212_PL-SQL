--Program - 5
--Write a PL/SQL block which accepts measurement 
--in feet and displays it in cm, inch and meter.


Declare

	feet number := &feet;
	cm number;
	inch number;
	meter number;
	
BEGIN

	dbms_output.put_line('feet=' || feet);
	cm := feet * 30.48;
	dbms_output.put_line(feet|| 'feet=' || cm || 'cm');
	inch := feet * 12;
	dbms_output.put_line(feet|| 'feet=' || inch || 'inch');
	meter := feet * 0.3048;
	dbms_output.put_line(feet|| 'feet=' || meter || 'meter');
	
end;
/