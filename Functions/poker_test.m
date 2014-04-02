function [ output ] = poker_test( input, rangeSize)
%POKER_TEST Summary of this function goes here
%   Detailed explanation goes here
disp('Poker Test:');
numGroups = 5;
inputLength = length(input);
loops = inputLength/5;
bigCounter = zeros(1,numGroups);

for n=1:loops
    values = zeros(1,numGroups);
    values(1) = input(n);
    count = 1;
    
    for i=1:numGroups-1
        
        for j=1:count %compares next number with all the numbers found so far.
            if values(j) ~= input(n+i)
                values(count+1) = input(n+i);
                count = count+1;
                break;
            end
        end
        
    end
    
    count = 0;
    l = length(values);
    for i=1:l %counts the number of different values found so far
        if values(i) ~= 0 
            count = count +1;
        end
    end
    bigCounter(count) = bigCounter(count) + 1;
    %disp(bigCounter);
end

%preparing the expected-array
prob = 1/rangeSize;
expected = zeros(1,numGroups);

expected(1) = prob.^4*loops;
expected(2) = prob.^3*((rangeSize-1)/rangeSize)*loops;
expected(3) = prob.^2*((rangeSize-1)/rangeSize)*((rangeSize-2)/rangeSize)*loops;
expected(4) = prob*((rangeSize-1)/rangeSize)*((rangeSize-2)/rangeSize)*((rangeSize-3)/rangeSize)*loops;
expected(5) = ((rangeSize-1)/rangeSize)*((rangeSize-2)/rangeSize)*((rangeSize-3)/rangeSize)*((rangeSize-4)/rangeSize)*loops;

output = chi_two_test(bigCounter, expected, 11);
end

