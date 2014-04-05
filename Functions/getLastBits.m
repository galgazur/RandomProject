function [ result ] = getLastBits( number, NoOfBits )
%GETLASTBITS Summary of this function goes here
%   Detailed explanation goes here

result = 0;

for i = 1:NoOfBits %<- Kanske ska vara NoOfBits:1
    result = result + bitget(number, i)*2^(i-1);
end

end

