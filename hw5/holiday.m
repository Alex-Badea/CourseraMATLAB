function [ ishd ] = holiday( m, d )
%HOLIDAY Summary of this function goes here
%   Detailed explanation goes here
HOLIDAYS = [1 1;
           4 7;
           25 12;
           31 12];
ishd = ismember([d m], HOLIDAYS, 'rows');
end

