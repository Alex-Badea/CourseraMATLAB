function [ e, k ] = approximate_e( delta )
%APPROXIMATE_E Summary of this function goes here
%   Detailed explanation goes here
e = 0;
k = 0;
while exp(1)-e > delta
    e = e + 1/fact(k);
    k = k+1;
end
k=k-1;
end

function y = fact(x)
    if x == 1 || x == 0, y = 1; return
    else, y = x*fact(x-1);
    end
end