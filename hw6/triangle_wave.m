function [ y ] = triangle_wave( n )
%TRIANGLE_WAVE Summary of this function goes here
%   Detailed explanation goes here
t = linspace(0, 4*pi, 1001);
y = zeros(1, size(t,2));
for i = 1:size(t,2)
    k = 0:n;
    y(i) = sum(((-1).^k.*sin(t(i)*(2*k+1))) ./ (2*k+1).^2);
end
end

