function [ p ] = poly_val( c0, c, x )
%POLY_VAL Summary of this function goes here
%   Detailed explanation goes here
if iscolumn(c)
    c = c';
end
c = [c0 c];
n = size(c,2);
pows = 0:n-1;
xs = x*ones(1,n);
p = c*(xs.^pows)';
end

