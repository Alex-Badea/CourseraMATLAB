function [ admitted ] = eligible( v, q )
%ELIGIBLE Summary of this function goes here
%   Detailed explanation goes here
if v > 88 && q > 88 && (v+q)/2 >= 92
    admitted = true;
else
    admitted = false;
end
end

