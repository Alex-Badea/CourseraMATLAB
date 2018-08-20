function [ time_m, miles ] = light_speed( d )
%LIGHT_SPEED Summary of this function goes here
%   Detailed explanation goes here
LIGHT_KPS = 300000;
MILE_IN_KM = 1.609;
time_s = d/LIGHT_KPS;
time_m = time_s/60;
miles = d/MILE_IN_KM;
end

