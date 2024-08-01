-- Program 2
-- Calculate simple interest

DECLARE

	Principle number := &Principle;
	Rate number := &Rate;
	N number := &N;
	SI number;
	
BEGIN

	SI := Principle * Rate * N / 100;
	dbms_output.put_line('Simple interest is'||SI);
	
end;
/