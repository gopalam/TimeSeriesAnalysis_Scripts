function [signew,lms]=InterpFill(t,sig)
% given a signal fill gaps with NaNs, use linear interpolation and return
% input signal and corresponding date numbers
% % usage 
%[signew,lms]=InterpFill(t,sig)
% t=date numbers (N,1)
% sig= one dimensional signal, (N,1)
% output interpolated signal, and limits where the zeroes were padded
% Gopal Mulukutla, December 2014

% caveat: if data begins with  and/or end with NaNs remove this data.
%
% perform interpolation, and pad the beginning and ending that contained NaNs with zeroes and return





% get the first and last finite value
idx=find(isfinite(sig));
fst=idx(1);lst=idx(end);

% take only this data
signew=sig(fst:lst,1);
tnew=t(fst:lst);


% fill the gaps by linear interpolation.
ind=(~(isnan(signew)));
x=tnew;
yi=signew(ind,1);
xi=tnew(ind,1);
ynew=interp1(xi,yi,x,'linear');

% create vectors with the same length as originally received.
% with zeros padded to signal in the beginning and end

signew=zeros(length(sig),1);
signew(fst:lst)=ynew;

lms=[fst lst];
end
