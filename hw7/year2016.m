function [ m ] = year2016( n )
%YEAR2016 Summary of this function goes here
%   Detailed explanation goes here
m = [];
 if ~isscalar(n) || n < 1 || n > 12 || fix(n) ~= n, return, end
WEEKS = ['Mon'; 'Tue'; 'Wed'; 'Thu'; 'Fri'; 'Sat'; 'Sun'];
switch n
    case 1
        month = 'January';
        days = 31;
    case 2
        month = 'February';
        days = 29;
    case 3
        month = 'March';
        days = 31;
    case 4
        month = 'April';
        days = 30;
    case 5
        month = 'May';
        days = 31;
    case 6
        month = 'June';
        days = 30;
    case 7
        month = 'July';
        days = 31;
    case 8
        month = 'August';
        days = 31;
    case 9
        month = 'September';
        days = 30;
    case 10
        month = 'October';
        days = 31;
    case 11
        month = 'November';
        days = 30;
    case 12
        month = 'December';
        days = 31;
end
vdays = ([31 29 31 30 31 30 31 31 30 31 30 31]);
start = 4+sum(vdays(1:n-1));
for i = 1:days
    m(i).month = month;
    m(i).date = i;
    m(i).day = WEEKS(mod(i+start-1,7)+1, :);
end
end

