function [ mbd] = spherical_mirror_aberr( fn, D )
%SPHERICAL_MIRROR_ABERR Summary of this function goes here
%   Detailed explanation goes here
f = D*fn;
delta_x = 0.01;
x = 0:delta_x:D/2;
theta = asin(x/(2*f));
d = 2*f*tan(2*theta).*(1./cos(theta) - 1);
mbd = 8*delta_x/D^2*x*d';
end

