function [ np ] = circular_primes( n )
%CIRCULAR_PRIMES Summary of this function goes here
%   Detailed explanation goes here
np = 0;
for i = 1:n-1
    if iscircprime(i)
        np = np+1;
    end
end
end

function f = iscircprime(x)
f = 1;
dign = floor(log10(x))+1;
for i = 1:dign
    x = fix(x/10^(dign-1)) + 10*x;
    x = fix(mod(x,10^dign));
    f = f && isprime(x);
end
end

function f = isprime(x)
f = true;
if x == 1, f = false; return, end
for i = 2:fix(x/2)
    if mod(x,i) == 0, f = false; return, end
end
end