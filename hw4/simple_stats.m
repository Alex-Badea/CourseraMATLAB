function [ S ] = simple_stats( N )
%SIMPLE_STATS Summary of this function goes here
%   Detailed explanation goes here
S = [mean(N,2) median(N,2) min(N,[],2) max(N,[],2)];
end

