
function [ p ] = smallest_multiple( n )
%SMALLEST_MULTIPLE Summary of this function goes here
%   Detailed explanation goes here
p = uint64(1);
for i = uint64(1:n)
    if isprime(i)
        c = uint64(1);
        while c*i <= n
            c = c*i;
        end
        p = p*c;
    end
end
if p == intmax('uint64'), p = uint64(0); return, end
end

function f = isprime(x)
f = true;
if x == 1, f = false; return, end
for i = 2:fix(x/2)
    if mod(x,i) == 0, f = false; return, end
end
end