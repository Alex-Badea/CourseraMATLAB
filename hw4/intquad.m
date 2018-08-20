function [ Q ] = intquad( n, m )
%INTQUAD Summary of this function goes here
%   Detailed explanation goes here
Q = [zeros(n,m) ones(n,m);
    2*ones(n,m) 3*ones(n,m)];
end

