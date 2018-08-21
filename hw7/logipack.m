function [ C ] = logipack( M )
%LOGIUNPACK Summary of this function goes here
%   Detailed explanation goes here
C = cell(1,size(M,1));
for i = 1:size(M,1)
    C{i} = sbu(find(M(i,:)==1));
end
end

function x = sbu(x)
if isempty(x),x=[];end
end