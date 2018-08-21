function [ v ] = small_elements( X )
%SMALL_ELEMENTS Summary of this function goes here
%   Detailed explanation goes here
list = java.util.ArrayList;
for i = 1:size(X,2)
    for j = 1:size(X,1)
        if X(j,i) < i*j
            list.add([j i]);
        end
    end
end
v = zeros(list.size(),2);
for i = 0:list.size()-1
    v(i+1,1:2) = list.get(i)';
end
end

