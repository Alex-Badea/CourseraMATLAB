function [ sindeg, avg ] = sindeg( deg )
%SINDEG Summary of this function goes here
%   Detailed explanation goes here
rad = deg*(pi/180);
sindeg = sin(rad);
avg = mean(sindeg(:));
end

