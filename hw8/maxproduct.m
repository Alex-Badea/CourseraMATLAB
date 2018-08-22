function [ p ] = maxproduct( A, n )
%MAXPRODUCT Summary of this function goes here
%   Detailed explanation goes here
maxp = -inf;
ori = 0; % 1-row, 2-col, 3-diag, 4-rdiag
start = [];
if n > max(size(A)), p = []; return, end
% row
for i = 1:size(A,1)
    for j = 1:size(A,2)-n+1
        cv = A(i, j:n+j-1);
        if prod(cv) > maxp
            maxp = prod(cv);
            ori = 1;
            start = [i j];
        end
    end
end
% col
for i = 1:size(A,1)-n+1
    for j = 1:size(A,2)
        cv = A(i:n+i-1, j);
        if prod(cv) > maxp
            maxp = prod(cv);
            ori = 2;
            start = [i j];
        end
    end
end
% diag
for i = 1:size(A,1)-n+1
    for j = 1:size(A,2)-n+1
        cqd = A(i:n+i-1, j:n+j-1);
        if prod(diag(cqd)) > maxp
            maxp = prod(diag(cqd));
            ori = 3;
            start = [i j];
        end
    end
end
% rdiag
for i = 1:size(A,1)-n+1
    for j = 1:size(A,2)-n+1
        cqd = A(i:n+i-1, j:n+j-1);
        flip(diag(diag(flip(cqd))))
        if prod(diag(flip(cqd))) > maxp
            maxp = prod(diag(flip(cqd)));
            ori = 4;
            start = [i j];
        end
    end
end

switch ori
    case 1
        p = start;
        for i = 1:n-1
            p = [p; p(i,1) p(i,2)+1];
        end
    case 2
        p = start;
        for i = 1:n-1
            p = [p; p(i,1)+1 p(i,2)];
        end
    case 3
        p = start;
        for i = 1:n-1
            p = [p; p(i,1)+1 p(i,2)+1];
        end
    case 4
        p = [start(1) start(2)+n-1];
        for i = 1:n-1
            p = [p; p(i,1)+1 p(i,2)-1];
        end
end
end