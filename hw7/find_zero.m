function [ x ] = find_zero( f, x1, x2 )
%FIND_ZERO Summary of this function goes here
%   Detailed explanation goes here
midx = (x1+x2)/2;
if abs(f(midx)) < 1e-10
    x = midx;
elseif f(midx - 1e-6) < f(midx + 1e-6)
    if f(midx) > 0
        x = find_zero(f, x1, midx);
    else
        x = find_zero(f, midx, x2);
    end
else
    if f(midx) > 0
        x = find_zero(f, midx, x2);
    else
        x = find_zero(f, x1, midx);
    end
end
end

