function [lag] = CCFMaxLag(sig1,sig2)
% given two signals sig1, and sig2 determine lag at max cross corr.

% Gopal Mulukutla, December 2014

  [Cxx1, ~]=xcorr(sig1,sig2);
 N=length(sig1);% same as length of sign2;
 [~,lag]=max(Cxx1);
% there are 2*N-1 elements.  N element on the left, N on the right.
% the cross-correlation or autocorrelation computed by xcorr has the zeroth lag in the middle of the sequence, at element or row maxlags+1 (element or row N if maxlags is not specified).
% determine lag with respect to zero point
 lag=lag-N; 
  

end
