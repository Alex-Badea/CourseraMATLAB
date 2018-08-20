function [ nseg, npoles ] = fence( lng, seg )
%FENCE Summary of this function goes here
%   Detailed explanation goes here
nseg = ceil(lng/seg);
npoles = nseg+1;
end

