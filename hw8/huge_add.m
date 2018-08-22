function [ res ] = huge_add( x, y )
%HUGE_ADD Summary of this function goes here
%   Detailed explanation goes here
if ~ischar(x) || ~ischar(y) ...
        || ~isempty(regexp(x, '[^0-9]', 'once')) ...
        || ~isempty(regexp(y, '[^0-9]', 'once'))
    res = -1;
    return
end
maxsz = max(length(x), length(y));
x = char(padarray(double(x), [0 maxsz-length(x)], double('0'), 'pre'));
y = char(padarray(double(y), [0 maxsz-length(y)], double('0'), 'pre'));
rem = 0;
res = zeros(1,maxsz);
for i = maxsz:-1:1
    d = str2double(x(i)) + str2double(y(i)) + rem;
    res(i) = num2str(mod(d,10));
    rem = fix(d/10);
end
if rem == 1, res = ['1' res]; end
res = char(res);
end

