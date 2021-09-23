function T = EDT2EST(t)
%% change time from EST to EDT
% given a vector of time (T, matlab datenumbers)
% Output the time vector(t) that converts only the EDT numbers to EST.
% the following equations are used here.
% EDT =GMT-04:00; EST=GMT-05:00 ; === >  EST=EDT-1;
% Gopal Mulukutla,developed for NR995 Fall 2014
  % caveat: only applies to the years given here. Add dates for subsequent years to make this work for 2020 and beyond.

EDTStart(1)= datenum('03/13/2011 2:00');
EDTEnd(1) =datenum('11/06/2011 2:00');

EDTStart(2)= datenum('03/11/2012 2:00');
EDTEnd(2) =datenum('11/04/2012 2:00');

EDTStart(3)= datenum('03/10/2013 2:00');
EDTEnd(3) =datenum('11/03/2013 2:00');

EDTStart(4)= datenum('03/09/2014 2:00');
EDTEnd(4) =datenum('11/02/2014 2:00');

EDTStart(5)= datenum('03/08/2015 2:00');
EDTEnd(5) =datenum('11/01/2015 2:00');

EDTStart(6)= datenum('03/13/2016 2:00');
EDTEnd(6) =datenum('11/06/2016 2:00');

EDTStart(7)= datenum('03/12/2017 2:00');
EDTEnd(7) =datenum('11/05/2017 2:00');

EDTStart(8)= datenum('03/11/2018 2:00');
EDTEnd(8) =datenum('11/04/2018 2:00');

EDTStart(9)= datenum('03/10/2019 2:00');
EDTEnd(9) =datenum('11/03/2019 2:00');



for i=1:length(EDTStart)
ind=find(t>=EDTStart(i) & t<=EDTEnd(i));
if (isempty(ind))
continue
else
t(ind)=t(ind)-1/24;
T=t;
end

end
