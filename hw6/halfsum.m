function [ s ] = halfsum( A )
%HALFSUM Summary of this function goes here
%   Detailed explanation goes here
s = 0;
for level = 1:min(size(A))
    s = s + sum(A(end-level+1,level:end));
end
end

