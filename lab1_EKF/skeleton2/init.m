% function [mu,sigma,R,Q,Lambda_M] = init()
% This function initializes the parameters of the filter.
% Outputs:
%			mu(0):			3X1
%			sigma(0):		3X3
%			R:				3X3
%			Q:				2X2

function [mu,sigma,R,Q,Lambda_M] = init()
mu = [0;0;0]; % initial estimate of state
sigma = 1e-10*diag([1 1 1]); % initial covariance matrix
delta_m = 0.999;
Lambda_M = chi2inv(delta_m,2);
% Fill In This Part
%%%% case 1
% R = diag([0.01^2 0.01^2 (2*pi/360)^2]);
% Q = diag([0.01^2 (2*pi/360)^2]);
%%%% case 2 
  R = diag([0.01^2 0.01^2 (2*pi/360)^2]);
  Q = diag([0.01^2 (randn()*0.2*2*pi/360)^2]);
end
