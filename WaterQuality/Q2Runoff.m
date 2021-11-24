function runoff = Q2Runoff(Q,WA)
% given the watershed area  in km^2, and streamflow in m^3/s
% convert Q to Runoff in mm/day
% Gopal Mulukutla, February 2015
runoff=(1/(WA*1000*1000))*Q; %converts to m^3/s
runoff=runoff*1000*24*60*60; % convert to mm/day

end
