%macro diaAnterior();

%let dayWeek = %sysfunc(weekday(%sysfunc(today())));
%let actualDayTemp = %sysfunc(today());

%If &dayWeek == 2 %then%do
		%let actualDay = actualDay-3;
	%end;
%ELSE %do
		%let actualDay = actualDay-1;
	%End;
%End;

%put &actualDayTemp.;
%mend diaAnterior;

%diaAnterior;
