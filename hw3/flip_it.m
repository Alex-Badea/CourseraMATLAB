function [ v ] = flip_it( w )
%FLIP_IT Summary of this function goes here
%   Detailed explanation goes here
n = size(w,2);
v = w(n:-1:1);
end

