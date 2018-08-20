function [ p ] = fare( d, a )
%FARE Summary of this function goes here
%   Detailed explanation goes here
if d > 0
    brute_p = 2;
    d = d - 1;
    if d > 0
        d = round(d);
        brute_p = brute_p + 0.25*min(9,d);
        d = d-9;
        if d > 0
            brute_p = brute_p + 0.1*d;
        end
    end
end

p = brute_p - (a<=18 || a>=60)*0.2*brute_p;
end

