function t= FindNearestDiscreteTS(dnum,ds)
% given a datenumber, find the nearest but earlier discrete time stamp
% get the day in integer form
% Gopal Mulukutla
% August 2015
% ds is the discrete time stamp input as a number un units of day
% 1/24= hours
% 1/96 = 15 minutes
% 1 = daily and so on.

day0=floor(dnum)
day1=day0+1;

% generate discrete time stamps for the day
Dsnum=[day0:ds:day1]';
% now find all the time stamps earlier than the time in question
ind=find(Dsnum<= dnum);
% The last time stamp is the one closest to the time in question
t=Dsnum(ind(end));

end
