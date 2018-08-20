function [ M ] = reverse_diag( n )
%REVERSE_DIAG Summary of this function goes here
%   Detailed explanation goes here
M = zeros(n);
M(n:n-1:end-1) = 1;
end

