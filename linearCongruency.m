function [ X ] = linearCongruency( modulus, multiplier, increment, startingValue, amount )
%LINEARCONGRUENCY Summary of this function goes here
%   Detailed explanation goes here

if(modulus<=0)
    error('Modulus parameter(1) is zero or negative.');
elseif(multiplier<0)
    error('Multiplier parameter(2) is negative.');
elseif(multiplier>modulus)
    error('Multiplier parameter(2) is bigger than modulus parameter(1).');
elseif(increment<0)
    error('Increment parameter(3) is negative.');
elseif(increment>modulus)
    error('Increment parameter(3) is bigger than modulus parameter(1).');
elseif(startingValue<0)
    error('Starting Value parameter(4) is negative.');
elseif(startingValue>modulus)
    error('Starting Value parameter(4) is bigger than modulus parameter(1).');
elseif(amount<=0)
    error('The sequence amount parameter(5) is zero or negative.');
end


X = zeros(1,amount);

X(1) = mod(multiplier*startingValue + increment, modulus);

for x=2:amount
    X(x) = mod(multiplier*X(x-1) + increment, modulus);
end

end

