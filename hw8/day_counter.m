function [ n ] = day_counter( y )
%DAY_COUNTER Summary of this function goes here
%   Detailed explanation goes here
d = 1;
for i = 1776:y-1
    vdays = [31 28 31 30 31 30 31 31 30 31 30 31];
    if isleap(i), vdays(2) = 29; end
    d = d + sum(vdays);
end
d = mod(d-1,7) + 1;
n = 0;
vdays = [31 28 31 30 31 30 31 31 30 31 30 31];
if isleap(y), vdays(2) = 29; end
for i = 1:12
    if d == 1, n = n+1; end
    d = d + vdays(i);
    d = mod(d-1,7) + 1;
end
end

function b = isleap(y)
if mod(y,100) == 0
    b = mod(y,400) == 0;
else
    b = mod(y,4) == 0;
end
end