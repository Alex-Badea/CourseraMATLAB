function [ u ] = dial( v )
%DIAL Summary of this function goes here
%   Detailed explanation goes here
u = uint64(0);
for i = 1:length(v)
    if ~isstrprop(v(i), 'alphanum') || upper(v(i)) ~= v(i)
        u = uint64(0);
        return
    end 
    u = u*10 + uint64(pad(v(i)));
end
end

function n = pad(c)
    switch c
        case {'1', '-', '(', ')'}
            n = 1;
        case {'A', 'B', 'C', '2'}
            n = 2;
        case {'D', 'E', 'F', '3'}
            n = 3;
        case {'G', 'H', 'I', '4'}
            n = 4;
        case {'J', 'K', 'L', '5'}
            n = 5;
        case {'M', 'N', 'O', '6'}
            n = 6;
        case {'P', 'Q', 'R', 'S', '7'}
            n = 7;
        case {'T', 'U', 'V', '8'}
            n = 8;
        case {'W', 'X', 'Y', 'Z', '9'}
            n = 9;
        case '0'
            n = 0;
    end
end