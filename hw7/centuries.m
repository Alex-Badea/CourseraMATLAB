function [ cr ] = centuries( y )
%CENTURIES Summary of this function goes here
%   Detailed explanation goes here
c = ceil(y/100);
f = fix(c/10);
s = fix(mod(c,10));
cr = '';
if ~isscalar(y) || y < 0 || y > 3000 || fix(y) ~= y, return, end
switch f
    case 1
        cr = 'X';
    case 2
        cr = 'XX';
    case 3
        cr = 'XXX';
end
switch s
    case 1
        cr = [cr 'I'];
    case 2
        cr = [cr 'II'];
    case 3
        cr = [cr 'III'];
    case 4 
        cr = [cr 'IV'];
    case 5
        cr = [cr 'V'];
    case 6
        cr = [cr 'VI'];
    case 7
        cr = [cr 'VII'];
    case 8
        cr = [cr 'VIII'];
    case 9
        cr = [cr 'IX'];
end

