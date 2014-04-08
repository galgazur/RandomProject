function [ sequence ] = lcg2( start, amount )
%BLC Summary of this function goes here
%   Detailed explanation goes here

    sequence = linearCongruency((2^31)-1, 48271, 0, start, amount)/((2^31)-1);

end

