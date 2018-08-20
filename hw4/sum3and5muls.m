function [ s ] = sum3and5muls( n )
%SUM3AND5MULS Summary of this function goes here
%   Detailed explanation goes here
mul3s = 3:3:n;
mul5s = 5:5:n;
dups = 15:15:n;
s = sum(mul3s)+sum(mul5s)-sum(dups);
end

