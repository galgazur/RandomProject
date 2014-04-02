function [ output ] = poker_test( input )
%POKER_TEST Summary of this function goes here
%   Detailed explanation goes here
disp('Poker Test:');
numGroups = 5;
inputLength = length(input);
loops = inputLength/5;
bigCounter = zeros(1,numGroups);
%disp(bigCounter);

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
maxValue = 100;
prob = 1/maxValue;
expected = zeros(1,numGroups);

expected(1) = prob.^4*maxValue;
expected(2) = prob.^3*(maxValue-1/maxValue)*maxValue;
expected(3) = prob.^2*(maxValue-1/maxValue)*(maxValue-2/maxValue)*maxValue;
expected(4) = prob*(maxValue-1/maxValue)*(maxValue-2/maxValue)*(maxValue-3/maxValue)*maxValue;
expected(5) = (maxValue-1/maxValue)*(maxValue-2/maxValue)*(maxValue-3/maxValue)*(maxValue-4/maxValue)*maxValue;

output = chi_two_test(bigCounter, expected, numGroups);
end
