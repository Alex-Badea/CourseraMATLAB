function [ orms ] = odd_rms( nn )
%ODD_RMS Summary of this function goes here
%   Detailed explanation goes here
n = 1:2:nn*2-1;
orms = sqrt(mean(n.^2));
end

