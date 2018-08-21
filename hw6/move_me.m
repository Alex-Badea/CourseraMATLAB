function [ w ] = move_me( v, a )
%MOVE_ME Summary of this function goes here
%   Detailed explanation goes here
if nargin == 1
    a = 0;
end
i = v == a;
w = v(~i);
w = [w a*ones(1,sum(i))];
end

