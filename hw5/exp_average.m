function [ out ] = exp_average( in, b )
%EXP_AVERAGE Summary of this function goes here
%   Detailed explanation goes here
persistent out_prev_
persistent b_
if isempty(out_prev_)
    %first call
    if nargin == 1
        %default b
        b_ = 0.1;
    else
        %assign persistent b
        b_ = b;
    end
    out = in;
    out_prev_ = out; 
else
    %not first call
    if nargin == 1
        %continue
        out = b_*in + (1-b_)*out_prev_;
    else
        %reset
        out = in;
        b_ = b;
    end
    out_prev_ = out;
end
end

