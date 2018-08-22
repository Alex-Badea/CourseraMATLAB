function [ n ] = digit_counter( fn )
%DIGIT_COUNTER Summary of this function goes here
%   Detailed explanation goes here
fh = fopen(fn, 'rt');
if fh < 0, n = -1; return, end
oneline = fgets(fh);
n = 0;
while ischar(oneline)
    n = n + length(regexp(oneline,'[0-9]'));
    oneline = fgets(fh);
end
end

