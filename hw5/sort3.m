
function [ x, y, z ] = sort3( v )
%SORT3 Summary of this function goes here
%   Detailed explanation goes here
x = v(1);
y = v(2);
z = v(3);

if x > y
    aux = x;
    x = y;
    y = aux;
end
if y > z
    aux = y;
    y = z;
    z = aux;
end
if x > y
    aux = x;
    x = y;
    y = aux;
end
end

