function [ s ] = spiral_diag_sum( n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
s = 1;
if n == 1, return, end
stop = 1;
layers = ceil(n/2);
for i = 1:layers-1
    start = stop + 2*i;
    stop = start + 6*i;
    s = s + (start+stop)*2;
end
end