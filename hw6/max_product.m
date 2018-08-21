function [ maxp, ind ] = max_product( v, n )
%MAX_PRODUCT Summary of this function goes here
%   Detailed explanation goes here
if length(v) < n, maxp = 0; ind = -1; return, end

maxp = -inf;
ind = -1;
for i = 1:length(v)-n+1
    v(i:i+n-1)
    curp = prod(v(i:i+n-1));
    if curp > maxp
        maxp = curp;
        ind = i;
    end
end
end

