function [ sequence ] = lcg( start, amount )
%BLC Summary of this function goes here
%   Detailed explanation goes here

    sequence = linearCongruency(2^32, 22695477, 1, start, amount)/2^32;

end

