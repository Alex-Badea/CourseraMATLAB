function [ income ] = income( rate, price )
%INCOME Summary of this function goes here
%   Detailed explanation goes here
income_h = rate*price';
income = income_h*2*8*6;
end

