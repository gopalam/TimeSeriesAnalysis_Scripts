function [DateNums,DateStrings] = GenerateTimeStamps(StartDate,endDate,InputFormat,interval,OutputFormat)
% generate timestamps, numbers and strings
% given StartDate,EndDate,Interval,format.
% interval in fraction of day
% input StartDate, EndDate,interval and format
% e.g. [DateNums,DateStrings]=GenerateTimeStamps('01/01/2001','01/01/2002',,1/96,'mm/dd/yyyy'')
% Gopal Mulukutla
% updated November 2014
%%
SDate=datenum(StartDate,InputFormat);
EDate=datenum(endDate,InputFormat);
DateNums=[SDate:interval:EDate]';
DateStrings = cell(length(DateNums),1);
DateStrings=cellstr(datestr(DateNums,OutputFormat));

end


