function [ l ] = number2letters( n )
%NUMBERS2LETTERS Summary of this function goes here
%   Detailed explanation goes here
n = uint64(n);
ut = [0 3 3 5 4 4 3 5 5 4 3 6 6 8 8 7 7 9 8 8];
t = [NaN 6 6 5 5 5 7 6 6];
if mod(n,100) < 20
    l = ut(mod(n,100)+1);
else
    l = ut(mod(n,10)+1) ...
        + t(idivide(mod(n,100), uint64(10)));
end
n = idivide(n, uint64(100));
if n ~= 0
    l = l + 7 + ut(n+1);
end
end

