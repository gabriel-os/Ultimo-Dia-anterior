
%macro diaAnterior();

%let dayWeek = %sysfunc(weekday(%sysfunc(today())));
%let actualDayTemp = %sysfunc(today());

%If &dayWeek == 2  %then %do;
		%let actualDay = %SYSFUNC(INTNX(day,&actualDayTemp,-3),date9.);
	%end;
%ELSE %do;
		%let actualDay = %SYSFUNC(INTNX(day,&actualDayTemp,-1),date9.);
	%End;


%put &actualDay.;
%mend diaAnterior;

%diaAnterior;
