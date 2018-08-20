function [ s ] = peri_sum( A )
%PERI_SUM Summary of this function goes here
%   Detailed explanation goes here
s = sum(A(1,1:end-1)) + sum(A(1:end-1,end)) + sum(A(end,2:end)) + sum(A(2:end,1));
end

