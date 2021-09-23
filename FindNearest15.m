function t= FindNearest15(dnum)
% given a datenumber, find the nearest but earlier 15 minute time stamp.
% get the day in integer form
% Gopal Mulukutla
% August 2015
day0=floor(dnum)
day1=day0+1;
% generate 15 minute time stamps for the day
Dnum15=[day0:1/96:day1]';
% now find all the time stamps earlier than the time in question
ind=find(Dnum15<= dnum);
% The last time stamp is the one closest to the time in question
t=Dnum15(ind(end));

end
