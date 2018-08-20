function [ diff ] = day_diff( m1, d1, m2, d2 )
%DAY_DIFF Summary of this function goes here
%   Detailed explanation goes here
MONTHS = [31 28 31 30 31 30 31 31 30 31 30 31];
if ~isscalar(m1) || ~isscalar(m2) || ~isscalar(d1) || ~isscalar(d2) ...
        || m1 ~= fix(m1) || m2 ~= fix(m2) || d1 ~= fix(d1) || d2 ~= fix(d2) ...
        || m1 > 12 || m2 > 12 || m1 < 1 || m2 < 1 || d1 < 1 || d2 < 1 ...
        || d1 > MONTHS(m1) || d2 > MONTHS(m2)
    diff = -1;
    return
end
days1 = sum(MONTHS(1:m1-1)) + d1;
days2 = sum(MONTHS(1:m2-1)) + d2;
diff = abs(days1-days2);
end

