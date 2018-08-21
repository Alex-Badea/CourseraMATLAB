function [ A ] = logiunpack( C )
%LOGIUNPACK Summary of this function goes here
%   Detailed explanation goes here
A = false(size(C,2));
for i = 1:size(C,2)
    A(i,C{i}) = true;
end
end

