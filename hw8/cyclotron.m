function [ E, N ] = cyclotron( V )
%CYCLOTRON Summary of this function goes here
%   Detailed explanation goes here
m = 3.344e-27;
q = 1.603e-19;
B = 1.6; 

r = sqrt(m*V/(q*B^2));
N = 0;
x = -r/2;
for i = 0:double(intmax('uint64')/2.0-1)
    x = x+2*(-1)^i*r;
    r = sqrt(r^2 + 2*m*V/(q*B^2));
    N = N + 1;
    if x < -0.5, break, end
end
E = V*N*1e-6;
end

