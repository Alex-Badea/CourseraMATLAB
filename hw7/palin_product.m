function [ n ] = palin_product( dig, lim )
%PALIN_PRODUCT Summary of this function goes here
%   Detailed explanation goes here
n = 0;
for i = 10^(dig-1):10^dig-1
    for j = 10^(dig-1):10^dig-1
        if ispal(i*j) && i*j < lim && i*j > n
            n = i*j;
        end
    end
end
end

function res = ispal(x)
res = rev(x) == x; 
end

function y = rev(x)
y = 0;
while x > 0  
    t = mod(x,10);
    y = 10*y+t;
    x = (x-t)/10;
end
end