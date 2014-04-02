function [ B ] = isOptimalParams2( )
%ISOPTIMALPARAMS2 Summary of this function goes here
%   Detailed explanation goes here

A = linearCongruency(2^48, 25214903917, 11, 0, 2^48);
B = (sum(A)==((2^49)*(2^48)))


end

