function [ zerosprc ] = zero_stat( M )
%ZERO_STAT Summary of this function goes here
%   Detailed explanation goes here
onesn = sum(M(:));
alln = numel(M);
zerosn = alln-onesn;
zerosprc = zerosn/alln*100;
end

