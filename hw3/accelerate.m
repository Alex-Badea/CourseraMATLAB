function [ amag ] = accelerate( F1, F2, m )
%ACCELERATE Summary of this function goes here
%   Detailed explanation goes here
F = F1+F2;
a = F/m;
x = a(1); y = a(2); z = a(3);
diag1 = sqrt(x^2 + y^2);
amag = sqrt(diag1^2 + z^2);
end

