function [ c ] = integerize( A )
%INTEGERIZE Summary of this function goes here
%   Detailed explanation goes here
if all(int8(A)==A), c = 'int8'; return, end
if all(int16(A)==A), c = 'int16'; return, end
if all(int32(A)==A), c = 'int32'; return, end
if all(int64(A)==A), c = 'int64'; return, end
c = 'NONE';
end